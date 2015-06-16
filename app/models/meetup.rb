class Meetup < ActiveRecord::Base
  has_many :users
  validates_presence_of :name, :description, :location
end
