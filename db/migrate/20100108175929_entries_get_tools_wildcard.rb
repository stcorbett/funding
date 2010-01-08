class EntriesGetToolsWildcard < ActiveRecord::Migration
  def self.up
    add_column :entries, :tools, :text
    add_column :entries, :wildcard, :text
    remove_column :entries, :phone
  end

  def self.down
    remove_column :entries, :tools
    remove_column :entries, :wildcard
    add_column :entries, :phone, :string
  end
end
