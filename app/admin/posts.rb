ActiveAdmin.register Post do
  index do
    column :id
    column :title
    column :slug
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :title
      f.input :content
    end
    f.buttons
  end
end
