ActiveAdmin.register UploadedFile do
  menu parent: I18n.t('active_admin.menu.resources', default: 'resources')

  config.per_page = 10

  permit_params :file

  index do
    selectable_column
    column(:file){|file| link_to(file[:file], admin_uploaded_file_path(file))}
    column t('activerecord.attributes.uploaded_file.url', default: 'url') do |file|
      link_to truncate(file.file.url, length: 50), file.file.url, target: '_blank'
    end
    column :created_at
    column(""){ |file| action_links(file) }
  end

  show(title: proc {|f| f[:file]}) do |file|
    attributes_table do
      row(:file) { file[:file] }
      row(t('activerecord.attributes.uploaded_file.url', default: 'url')) do
        link_to file.file.url, file.file.url, target: '_blank'
      end
      row :created_at
    end
    span link_to(t('active_admin.back'), admin_uploaded_files_path)
  end

  form html: { multipart: true } do |f|
    f.inputs title_for(f.resource) do
      f.input :file, hint: uploaded_file[:file]
    end
    f.actions
  end

  filter :file
  filter :created_at

end