class HexesController < InheritedResources::Base

  def index
    @hexes = Hex.all
    @hex_categories = HexCategory.all
  end

  def show
    @hex = Hex.find(params[:id])
  end
end
