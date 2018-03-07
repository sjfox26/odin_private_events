class AddCreatorToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :creator, index: true, foreign_key: true
  end
end
