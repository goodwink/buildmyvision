ActiveAdmin.register Post do
  index do
    column :id
    column :title
    column :author
    column :slug
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :title
      f.input :content
      f.input :author
    end
    f.buttons
  end
end
