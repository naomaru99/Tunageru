class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :messagable_id
      t.string :messagable_type
      t.text :text
      t.timestamps null: false
    end
  end
end
