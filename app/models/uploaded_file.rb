class UploadedFile < Upload
  mount_uploader :file, CkeUploadsFileUploader
end