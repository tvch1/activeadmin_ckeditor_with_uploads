## Activeadmin Ckeditor with Uploads

Adds ckeditor with working file and image uploads to your activeadmin app.

-----

#### Installation

Add this to your gemfile:
    
    gem 'activeadmin_ckeditor_with_uploads', github: 'tvch1/activeadmin_ckeditor_with_uploads'

Than run `bundle install`

And finally:
    
    rails generate activeadmin_ckeditor_with_uploads:install

which will create a migration for uploads and copy activeadmin resources to your `app/admin` directory

If you want to customize ckeditor config or select_resource view (renders when you click "select on server" in a ckeditor link creation dialoge), there is one more generator for you:

    rails generate activeadmin_ckeditor_with_uploads:customize

which will copy ckeditor config file to `app/assets/javascripts/admin/ckeditor.js.coffee` and select_resource view to `app/views/admin/uploads/sselect_resource.html.haml`

#### Summary

I made this plugin to automate ckeditor setup for our projects.

It depends on ckeditor_rails gem and adds formtastic ckeditor input to your app, allowing to do things like:

```
form do |f|
  f.inputs do
    f.input :body, as: :ckeditor
    #...
  end
end
```


#### Contacts

You can contact me via email: <vizvamitra@gmail.com>
Feel free to make pull requests or create issues)

Dmitrii Krasnov

