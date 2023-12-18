class Prospect < ApplicationRecord

  validates :industry,presence: true
  validates :jobrole,presence: true
  belongs_to :user

  enum industry: { industry_high: 'high', industry_medium: 'medium', industry_low: 'low' }
  enum jobrole: { jobrole_high: 'high', jobrole_medium: 'medium', jobrole_low: 'low' }
  enum designer: { designer_high: 'high', designer_medium: 'medium', designer_low: 'low' }
  enum location: { location_high: 'high', location_medium: 'medium', location_low: 'low' }
  after_create_commit {broadcast_append_to "prospects"}
  after_update_commit {broadcast_replace_to "prospects"}
  after_destroy_commit {broadcast_remove_to "prospects"}

end
