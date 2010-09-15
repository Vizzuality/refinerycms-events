class Event < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description, :location]

  validates_presence_of :title
  validates_uniqueness_of :title

end
