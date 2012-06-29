class Admin::MobileTypesController < Admin::AdminController
  # GET /mobile_types
  # GET /mobile_types.xml
  def index
    @mobile_types = MobileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mobile_types }
    end
  end

  # GET /mobile_types/1
  # GET /mobile_types/1.xml
  def show
    @mobile_type = MobileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mobile_type }
    end
  end

  # GET /mobile_types/new
  # GET /mobile_types/new.xml
  def new
    @mobile_type = MobileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mobile_type }
    end
  end

  # GET /mobile_types/1/edit
  def edit
    @mobile_type = MobileType.find(params[:id])
  end

  # POST /mobile_types
  # POST /mobile_types.xml
  def create
    @mobile_type = MobileType.new(params[:mobile_type])

    respond_to do |format|
      if @mobile_type.save
        format.html { redirect_to(admin_mobile_type_path(@mobile_type), :notice => 'Mobile type was successfully created.') }
        format.xml  { render :xml => @mobile_type, :status => :created, :location => @mobile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mobile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mobile_types/1
  # PUT /mobile_types/1.xml
  def update
    @mobile_type = MobileType.find(params[:id])

    respond_to do |format|
      if @mobile_type.update_attributes(params[:mobile_type])
        format.html { redirect_to(admin_mobile_type_path(@mobile_type), :notice => 'Mobile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mobile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mobile_types/1
  # DELETE /mobile_types/1.xml
  def destroy
    @mobile_type = MobileType.find(params[:id])
    @mobile_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_mobile_types_path) }
      format.xml  { head :ok }
    end
  end
end
