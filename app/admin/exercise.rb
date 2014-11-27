ActiveAdmin.register Exercise do

  index do
    selectable_column
    column :title do |exercise|
      link_to exercise.title, admin_exercise_path(exercise)
    end
   column :description do |exercise|
    (exercise.description || "").first(40)
   end
   column :photo do |exercise| image_tag exercise.photo.url, width:"100px", height:"100px" end
   actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Identity" do
      f.input :track
      f.input :title
      f.input :description
    end
    f.inputs "Photo" do
      f.input :photo
    end
    f.actions
  end

 show do |exercise|
   attributes_table do
     row :track_id
     row :title
     row :description
     row :photo do
       image_tag(exercise.photo.url)
     end
     # Will display the image on show object page
    end
  end

  permit_params :title, :description, :track_id

end
