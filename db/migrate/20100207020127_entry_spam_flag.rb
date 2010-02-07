class EntrySpamFlag < ActiveRecord::Migration
  def self.up
    add_column :entries, :spam, :boolean
  end

  def self.down
    remove_column :entries, :spam
  end
end
