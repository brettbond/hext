ActiveAdmin.register Hex do

  permit_params :hex_text, :hex_category_id

  index do
    column (:hex_text) { |html_allowed| raw(html_allowed.hex_text) }
    column :hex_category
    actions
  end

  show do |ad|
    attributes_table do
      row :hex_category
      row (:hex_text) { |html_allowed| raw(html_allowed.hex_text) }
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :hex_category
      f.input :hex_text, as: :html_editor
    end
    f.actions
  end

end
