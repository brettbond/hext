class HexMessage < ActiveRecord::Base
  belongs_to :hex

  def normalize_from
    normalize(from)
  end

  def normalize_to
    normalize(to)
  end

  def normalize(phone_number)
    phone_number.strip!
    phone_number.prepend '1' unless phone_number.start_with? '1'
    Phony.normalize phone_number
  end

end
