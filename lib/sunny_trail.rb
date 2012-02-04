class SunnyTrail
  include HTTParty

  base_uri 'https://i.thesunnytrail.com'
  default_params api_key: 'BPVLbhXSXg', source: 'rest'

  def new_signup(email)
    options = {email: email}
    self.class.get('/api', options)
  end
end