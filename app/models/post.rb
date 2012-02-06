class Post < ActiveRecord::Base
  belongs_to :author, class_name: AdminUser
  before_create :generate_slug

  def generate_slug
    # Perform transliteration to replace non-ascii characters with an ascii
    # character
    value = self.title.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n, '').to_s
    
    # Remove single quotes from input
    value.gsub!(/[']+/, '')

    # Replace any non-word character (\W) with a space
    value.gsub!(/\W+/, ' ')
    
    # Remove any whitespace before and after the string
    value.strip!
    
    # All characters should be downcased
    value.downcase!
    
    # Replace spaces with dashes
    value.gsub!(' ', '-')
    
    # Return the resulting slug
    self.slug = value
  end

  def to_param
    "#{id}-#{slug.parameterize}"
  end
end
