class HexesController < InheritedResources::Base

  def index
    @hexes = Hex.all
  end

end
