class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.references :User, null: false, foreign_key: true
      t.references :Course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
