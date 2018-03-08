class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendees, foreign_key: "attendee_event_id"
  has_many :attendees, through: "event_attendees", source: "event_attendee"

  def self.upcoming
    where('date >= ?', DateTime.now)
  end

  def self.past
    where('date < ?', DateTime.now)
  end

#  def self.published             ###Example from tutorial online
#    where(status: 'published')
#  end

end
