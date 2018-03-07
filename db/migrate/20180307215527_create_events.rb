class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
