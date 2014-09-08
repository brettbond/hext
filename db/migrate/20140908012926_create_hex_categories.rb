class CreateHexCategories < ActiveRecord::Migration
  def change
    create_table :hex_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
