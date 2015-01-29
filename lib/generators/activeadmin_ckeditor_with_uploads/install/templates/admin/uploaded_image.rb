ActiveAdmin.register UploadedImage do
  menu parent: I18n.t('active_admin.menu.resources')

  config.per_page = 10

  permit_params :file

  index do
    selectable_column
    column :image do |image|
      link_to(image_tag(image.file.thumb), [:admin, image])
    end
    column t('activerecord.attributes.uploaded_image.url') do |image|
      link_to truncate(image.file.url, length: 30), image.file.url, target: "_blanc"
    end
    column :created_at
    column(""){ |image| action_links(image) }
  end

  show(title: proc {|f| f[:file]}) do |image|
    attributes_table do
      row(:file) { image[:file] }
      row(t('activerecord.attributes.uploaded_image.thumb')){ image_tag(image.file.thumb) }
      row t('activerecord.attributes.uploaded_image.url') do
        link_to image.file.url, image.file.url, target: "_blanc"
      end
      row :created_at
    end
    span link_to(t('active_admin.back'), admin_uploaded_images_path)
  end

  form html: { multipart: true } do |f|
    f.inputs title_for(f.resource) do
      f.input :file, hint: image_tag(uploaded_image.file.thumb)
    end
    f.actions
  end

  filter :file
  filter :created_at

end