ActiveAdmin.register Track do

index do
   selectable_column
   column :position do |track|
      link_to track.position, admin_track_path(track)
    end
   column :title do |track|
      link_to track.title, admin_track_path(track)
    end
   column :description do |track|
    (track.description || "").first(100)
   end
   column :photo do |track| image_tag track.photo.url, width:"100px", height:"100px" end
   actions
 end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Identity" do
      f.input :position
      f.input :title
      f.input :description
    end
    f.inputs "Photo" do
      f.input :photo
    end
    f.actions
  end

 show do |track|
   attributes_table do
     row :position
     row :title
     row :description
     row :photo do
       image_tag(track.photo.url)
     end
     # Will display the image on show object page
    end
  end


  permit_params :title, :description, :position, :photo # etc...

end
