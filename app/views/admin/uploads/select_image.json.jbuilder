json.array! @images do |img|
  json.image img.file.url
  json.thumb img.file.thumb.url
end