class CreateGrants < ActiveRecord::Migration
  def self.up
    create_table :grants do |t|
      t.belongs_to  :community
      t.string      :name
      t.string      :description
      t.timestamps
    end
  end

  def self.down
    drop_table :grants
  end
end
