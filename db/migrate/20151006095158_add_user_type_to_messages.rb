class AddUserTypeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_type, :string
  end
end
