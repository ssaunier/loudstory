ActiveAdmin.register Question do

 index do
   selectable_column
   column :title do |question|
      link_to question.title, admin_question_path(question)
    end
   column :description do |question|
    (question.description || "").first(40)
   end
   column :photo do |question| image_tag question.photo.url, width:"100px", height:"100px" end
   actions
 end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Identity" do
      f.input :exercise
      f.input :title
      f.input :description
    end
    f.inputs "Photo" do
      f.input :photo
    end
    f.actions
  end

 show do |question|
   attributes_table do
     row :exercise_id
     row :title
     row :description
     row :photo do
       image_tag(question.photo.url)
     end
     # Will display the image on show object page
  end
 end

  permit_params :title, :description, :photo, :exercise_id

end


