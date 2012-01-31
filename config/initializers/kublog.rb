Kublog.setup do |config|
  
  ## General Configuration
  ##
  config.blog_name = 'The Dev Scoop'
  config.blog_description = "Devscoop's thoughts on development and startups"
  config.default_url_options = {:host => 'buildmyvision.com'}
                             
  ## Segment E-mail notifications
  ##
  ## Uncomment to segment users notified
  ## config.user_kinds = %w(paying_customers free_loaders)
  
  config.author_email 'blog@devscoop.com'
  
  ## Twitter Sharing Settings
  ##
  ## config.twitter do |twitter|
  ##   twitter.consumer_key = 'your-consumer-key'
  ##   twitter.consumer_secret = 'your-consumer-secret'
  ##   twitter.oauth_token = 'your-oauth-token'
  ##   twitter.oauth_token_secret = 'your-consumer-secret'
  ## end
  
  ## Facebook Sharing Setting
  ## It's sort of trick to find this, check docs at github.com/innku/kublog
  ##
  ## config.facebook_page_token = 'your-page-token'
  
  
  ## Notification processing
  ##
  ## config.notification_processing = {:development => :delayed_job,
  ##                                   :test => :immediate,
  ##                                   :staging => :delayed_job,
  ##                                   :production => :delayed_job }[Rails.env.to_sym]
  
  ## Image Storage Configuration
  ##
  ## config.image_storage = {:development => :file, 
  ##                         :test => :file, 
  ##                         :staging => :s3, 
  ##                         :production => :s3}[Rails.env.to_sym]\
  
end