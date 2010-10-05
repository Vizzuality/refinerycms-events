class Event < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description, :location]

  validates_presence_of :title
  validates_uniqueness_of :title

  def similar(options = {})
    default_options = {
      :distance_in_days => 2,
      :limit => 10
    }
    options = default_options.merge(options)
    Event.limit(options[:limit]).where("id != #{self.id}").where("events.from >= '#{self.from.at_beginning_of_day.to_s(:db)}' AND events.from <= '#{(self.from.end_of_day + options[:distance_in_days].days).to_s(:db)}'")
  end

end
