ActiveAdmin.register Upload do
  menu false

  skip_before_filter :verify_authenticity_token

  collection_action :upload_file, :method => :post do
    if params[:type] == 'image' and params[:upload].content_type =~ /^image/
      @upload = UploadedImage.create!(file: params[:upload])
    else
      @upload = UploadedFile.create!(file: params[:upload])
    end
    @CKEditorFuncNum = params[:CKEditorFuncNum]
  end

  collection_action :select_image, method: :get do
    @images = UploadedImage.all
    render template: 'admin/uploads/select_image.json', layout: false
  end

  collection_action :select_resource, method: :get do
    @files = UploadedFile.all
    @CKEditorFuncNum = params[:CKEditorFuncNum]
    render layout: false
  end

end