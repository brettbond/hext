json.array!(@hexes) do |hex|
  json.extract! hex, :id, :hex_text
  json.url hex_url(hex, format: :json)
end
