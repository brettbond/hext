ActiveAdmin.register Hex do

  permit_params :hex_text, :hex_category_id

  index do
    column :hex_text
    column :hex_category
    actions
  end

end
