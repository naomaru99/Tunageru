class CreateMessageRooms < ActiveRecord::Migration
  def change
    create_table :message_rooms do |t|

      t.integer :student_id
      t.integer :worker_id
      t.integer :message_id
      t.timestamps null: false
    end
  end
end
