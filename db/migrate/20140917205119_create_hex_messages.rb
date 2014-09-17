class CreateHexMessages < ActiveRecord::Migration
  def change
    create_table :hex_messages do |t|
      t.string :from
      t.string :to
      t.integer :hex_id
      t.string :customMessage
      t.integer :in_reply_to_hex

      t.timestamps
    end
  end
end
