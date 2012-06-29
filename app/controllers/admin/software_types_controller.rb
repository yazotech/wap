class Admin::SoftwareTypesController < Admin::AdminController
  # GET /software_types
  # GET /software_types.xml
  def index
    @software_types = SoftwareType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @software_types }
    end
  end

  # GET /software_types/1
  # GET /software_types/1.xml
  def show
    @software_type = SoftwareType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @software_type }
    end
  end

  # GET /software_types/new
  # GET /software_types/new.xml
  def new
    @software_type = SoftwareType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @software_type }
    end
  end

  # GET /software_types/1/edit
  def edit
    @software_type = SoftwareType.find(params[:id])
  end

  # POST /software_types
  # POST /software_types.xml
  def create
    @software_type = SoftwareType.new(params[:software_type])

    respond_to do |format|
      if @software_type.save
        format.html { redirect_to( admin_software_type_path(@software_type), :notice => 'Software type was successfully created.') }
        format.xml  { render :xml => @software_type, :status => :created, :location => @software_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @software_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /software_types/1
  # PUT /software_types/1.xml
  def update
    @software_type = SoftwareType.find(params[:id])

    respond_to do |format|
      if @software_type.update_attributes(params[:software_type])
        format.html { redirect_to(admin_software_type_path(@software_type), :notice => 'Software type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @software_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /software_types/1
  # DELETE /software_types/1.xml
  def destroy
    @software_type = SoftwareType.find(params[:id])
    @software_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_software_types_path) }
      format.xml  { head :ok }
    end
  end
end
