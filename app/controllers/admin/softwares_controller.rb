class Admin::SoftwaresController < Admin::AdminController
  # GET /softwares
  # GET /softwares.xml
  def index
    @softwares = Software.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @softwares }
    end
  end

  # GET /softwares/1
  # GET /softwares/1.xml
  def show
    @software = Software.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @software }
    end
  end

  # GET /softwares/new
  # GET /softwares/new.xml
  def new
    @software = Software.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @software }
    end
  end

  # GET /softwares/1/edit
  def edit
    @software = Software.find(params[:id])
  end

  # POST /softwares
  # POST /softwares.xml
  def create
    @software = Software.new(params[:software])

    respond_to do |format|
      if @software.save
        format.html { redirect_to(admin_software_path(@software), :notice => 'Software was successfully created.') }
        format.xml  { render :xml => @software, :status => :created, :location => @software }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /softwares/1
  # PUT /softwares/1.xml
  def update
    @software = Software.find(params[:id])
    if params[:datafile]
      r = Resource.new
      r.original_filename = params[:datafile].original_filename
      r.file_type = params[:file_type]
      r.ext = File.extname(r.original_filename)
      r.save
      directory = "public/upload/" + r.file_type
      path = File.join(directory, r.id.to_s + r.ext)
      
      File.open(path, "wb") { |f| f.write(params[:datafile].read) }
      @software.resources << r
     # render :text => "File has been uploaded successfully "
    end
    respond_to do |format|
      if @software.update_attributes(params[:software])
        format.html { redirect_to(admin_software_path(@software), :notice => 'Software was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @software.errors, :status => :unprocessable_entity }
      end
    end
    
  end

  # DELETE /softwares/1
  # DELETE /softwares/1.xml
  def destroy
    @software = Software.find(params[:id])
    @software.destroy

    respond_to do |format|
      format.html { redirect_to(admin_softwares_path) }
      format.xml  { head :ok }
    end
  end
  
  
end
