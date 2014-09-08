json.array!(@hex_categories) do |hex_category|
  json.extract! hex_category, :id, :name, :hex_id
  json.url hex_category_url(hex_category, format: :json)
end
