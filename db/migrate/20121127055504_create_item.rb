# Created with the following command:
# => rake db:create_migration NAME=create_item
class CreateItem < ActiveRecord::Migration
  def up
  	create_table :items do |t|
  		t.string :name
  	end
  end

  def down
  	drop_table :items
  end
end
