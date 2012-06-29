class Admin::UploadResourceController < Admin::AdminController
  def index
    if params[:datafile]
      r = Resource.new
      r.original_filename = params[:datafile].original_filename
      r.file_type = params[:file_type]
      r.ext = File.extname(r.original_filename)
      r.save
      directory = "public/upload/" + r.file_type
      path = File.join(directory, r.id.to_s + r.ext)
      
      File.open(path, "wb") { |f| f.write(params[:datafile].read) }
     # render :text => "File has been uploaded successfully "
    end
  end
end