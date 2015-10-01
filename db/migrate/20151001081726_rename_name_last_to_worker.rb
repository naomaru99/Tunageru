class RenameNameLastToWorker < ActiveRecord::Migration
  def up
    rename_column :workers, :name_last, :family_name
    rename_column :workers, :name_first, :first_name
    rename_column :workers, :name_kana_last, :family_name_kana
    rename_column :workers, :name_kana_first, :first_name_kana
    #   呪文     :テーブル名, :旧カラム名, :新カラム名
  end

  def down
    rename_column :workers, :family_name, :name_last
    rename_column :workers, :first_name, :name_first
    rename_column :workers, :family_name_kana, :name_kana_last
    rename_column :workers, :first_name_kana, :name_kana_first
    #   呪文     :テーブル名, :新カラム名, :旧カラム名
  end
end
