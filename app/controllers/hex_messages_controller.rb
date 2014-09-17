class HexMessagesController < ApplicationController
  def create
      @hex_message = HexMessage.new(hex_message_params)
      if @hex_message.save

        redirect_to @hex_message
      else
        redirect_to root_url, alert: "Forces conspired to deny your hex."
      end
  end

  def show
    @hex_message = HexMessage.find(params[:id])
  end

private
    def hex_message_params
      params.require(:hex_message).permit(:to, :hex_id)
    end
end
