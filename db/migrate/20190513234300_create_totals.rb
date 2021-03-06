class CreateTotals < ActiveRecord::Migration[5.2]
  def change
    create_table :totals do |table|

      table.references :user

      table.integer :likes, :default => 0
      table.integer :comments, :default => 0
      table.integer :rediscoveredTaskCount, :default => 0
      table.integer :createTaskCount, :default => 0
      table.float :taskTimeCounter, :default => 0.0
      table.integer :wikiPagesEditCount, :default => 0
      table.timestamps null: false
    end
  end
end