$redis = Redis.new
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