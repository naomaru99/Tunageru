class AddColumnsToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :uid, :string
    add_column :workers, :provider, :string
  end
end
