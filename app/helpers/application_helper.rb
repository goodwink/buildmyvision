module ApplicationHelper
  def link_to_feature(feature, *args, &block)
    if rollout? feature
      link_to args, block
    end
  end
end
