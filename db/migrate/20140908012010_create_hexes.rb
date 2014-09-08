class CreateHexes < ActiveRecord::Migration
  def change
    create_table :hexes do |t|
      t.string :hex_text
      t.belongs_to :hex_category, index: true
      t.timestamps
    end
  end
end
