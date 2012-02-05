SimpleNavigation::Configuration.run do |navigation|

  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.dom_class = 'nav'

    primary.item :home, 'Home', root_path
    primary.item :blog, 'Blog', posts_path
    #primary.item :about, 'Who We Are', about_path
    primary.item :contact, 'Contact Us', 'mailto:questions@devscoop.com'
  end

end
