class HexesController < InheritedResources::Base

  def index
    @hexes = Hex.all
    @hex_categories = HexCategory.all
  end

end
