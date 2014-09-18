class Hex < ActiveRecord::Base
  belongs_to :hex_category
  has_many :hex_messages

end
