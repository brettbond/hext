class HexMessagesController < ApplicationController
  def create
    hexMessage = HexMessage.new :from => params[:from]
  end
end
