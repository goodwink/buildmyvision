Airbrake.configure do |config|
   config.api_key     = 'a0c1c1c1d2ed87aaf75f45ef815ac9b9'
   config.host        = 'devscoop-errbit.herokuapp.com'
   config.port        = 80
   config.secure      = config.port == 443
 end