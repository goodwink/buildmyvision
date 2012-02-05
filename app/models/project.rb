class Project < ActiveRecord::Base
  before_create :publish_project

  def publish_project
    self.trello_card_id = Trello::Card.create(
      name: self.name,
      description: self.description,
      list_id: '4f29d03821403b8c28acf14d').id
  end
end
