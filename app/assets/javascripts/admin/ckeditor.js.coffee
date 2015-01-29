#= require active_admin/base
#= require ckeditor-jquery

$ ->
  config = {
    toolbar_Standard: [
      { name: 'history', items: [ 'Undo','Redo' ] },
      { name: 'basicstyles', items: [ 'Bold','Italic','Underline','-','RemoveFormat' ] },
      { name: 'styles', items: [ 'Format' ] },
      { name: 'paragraph', items: [ 'NumberedList','BulletedList','-','Outdent','Indent','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'] },
      { name: 'links', items: [ 'Link','Unlink','Anchor' ] }
      { name: 'insert', items: [ 'MediaEmbed','Image','Imap','HorizontalRule' ] },
      { name: 'tools', items: [ 'Maximize' ] }
    ]
    toolbar: 'Standard',

    # always paste as plain text
    forcePasteAsPlainText: true,

    # Simplify the dialog windows.
    removeDialogTabs: 'image:advanced;link:advanced',

    # Remove some buttons provided by the standard plugins, which are
    # not needed in the Standard(s) toolbar.
    # removeButtons: 'Subscript,Superscript',
    
    # Set the most common block elements.
    format_tags: 'p;h1;h2;h3;pre',

    filebrowserUploadUrl: '/admin/uploads/upload_file?type=file',
    filebrowserImageUploadUrl: '/admin/uploads/upload_file?type=image',
    filebrowserBrowseUrl: '/admin/uploads/select_resource',
    imageBrowser_listUrl: '/admin/uploads/select_image',
    extraPlugins: 'imagebrowser,mediaembed',#,imap,justify',
    height: '350px'
  }

  $('.ckeditor').ckeditor (->), config

$(document).ready ->
  if ( $('.ckeditor').prev('label').length ) 
    $('.ckeditor').prev('label').hide()