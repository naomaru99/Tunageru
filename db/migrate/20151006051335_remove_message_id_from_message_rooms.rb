class RemoveMessageIdFromMessageRooms < ActiveRecord::Migration
  def change
    remove_column :message_rooms, :message_id, :integer
  end
end
