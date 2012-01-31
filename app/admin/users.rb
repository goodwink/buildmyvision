ActiveAdmin.register User do
  index do
  	column :id
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column :current_sign_in_ip
    column :last_sign_in_ip
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :email
    end
    f.buttons
  end
end
