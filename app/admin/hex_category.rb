ActiveAdmin.register HexCategory do

  permit_params :name

  index do
    column :name
    actions
  end

end
