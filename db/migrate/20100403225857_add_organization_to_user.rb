class AddOrganizationToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :organization, :string
    add_column :users, :twitter, :string
  end

  def self.down
    remove_column :users, :twitter
    remove_column :users, :organization
  end
end
