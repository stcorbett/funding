class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :company_name, :name, :email, :url, :phone
      t.text :team, :product, :customer, :goals
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
