class CreateBackouts < ActiveRecord::Migration
  def self.up
    create_table :backouts, :primary_key => :id do |t|
      t.datetime :DateTime
      t.integer :ScanID
      t.boolean :Status
      t.string :KeyName
      t.string :KeyValue
      t.string :Table
      t.string :DatabaseName
      t.integer :Operation
      t.string :FieldName
      t.timestamps
    end
  end

  def self.down
    drop_table :backouts
  end
end
