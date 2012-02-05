uri = URI.parse(ENV["REDISTOGO_URL"])
$redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

$rollout = Rollout.new($redis)

$rollout.define_group(:staff) do |user|
  user.staff?
end

$rollout.define_group(:alpha) do |user|
  user.alpha?
end

$rollout.define_group(:beta) do |user|
  user.beta?
end