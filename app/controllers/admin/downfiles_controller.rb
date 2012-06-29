class Admin::DownfilesController < Admin::AdminController
  # GET /downfiles
  # GET /downfiles.xml
  def index
    @downfiles = Downfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @downfiles }
    end
  end

  # GET /downfiles/1
  # GET /downfiles/1.xml
  def show
    @downfile = Downfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @downfile }
    end
  end

  # GET /downfiles/new
  # GET /downfiles/new.xml
  def new
    @downfile = Downfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @downfile }
    end
  end

  # GET /downfiles/1/edit
  def edit
    @downfile = Downfile.find(params[:id])
  end

  # POST /downfiles
  # POST /downfiles.xml
  def create
    @downfile = Downfile.new(params[:downfile])

    respond_to do |format|
      if @downfile.save
        format.html { redirect_to(admin_downfile_path(@downfile), :notice => 'Downfile was successfully created.') }
        format.xml  { render :xml => @downfile, :status => :created, :location => @downfile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @downfile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /downfiles/1
  # PUT /downfiles/1.xml
  def update
    @downfile = Downfile.find(params[:id])

    respond_to do |format|
      if @downfile.update_attributes(params[:downfile])
        format.html { redirect_to(admin_downfile_path(@downfile), :notice => 'Downfile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @downfile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /downfiles/1
  # DELETE /downfiles/1.xml
  def destroy
    @downfile = Downfile.find(params[:id])
    @downfile.destroy

    respond_to do |format|
      format.html { redirect_to(admin_downfiles_path) }
      format.xml  { head :ok }
    end
  end
end
