class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :user
      t.references :event
      t.integer :guests_count
      t.string :status

      t.timestamps
    end
  end
end
