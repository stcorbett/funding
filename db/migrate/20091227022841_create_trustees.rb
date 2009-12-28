class CreateTrustees < ActiveRecord::Migration
  def self.up
    create_table :trustees do |t|
      t.string :name, :url, :organization, :twitter, :email
      
      t.timestamps
    end
  end

  def self.down
    drop_table :trustees
  end
end
