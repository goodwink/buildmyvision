ActiveAdmin.register AdminUser do
  index do
  	column :id
    column :email
    column :display_name
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column :current_sign_in_ip
    column :last_sign_in_ip
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :display_name
      #f.input :password, :as => :password
      #f.input :password_confirmation, :as => :password
    end
    f.buttons
  end
end
