class User < ApplicationRecord
  has_many :created_events, foreign_key: "creator_id", class_name: "Event"
  has_many :event_attendees, foreign_key: "event_attendee_id"
  has_many :events, through: "event_attendees", source: "attendee_event"


  def upcoming_events
    self.events.where('date >= ?', DateTime.now)
  end

  def previous_events
    self.events.where('date < ?', DateTime.now)
  end
end
