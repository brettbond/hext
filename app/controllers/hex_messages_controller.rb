class HexMessagesController < ApplicationController
  def create
      @hex_message = HexMessage.new(hex_message_params)
      if @hex_message.save
        @client = Twilio::REST::Client.new TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN

        @message = @client.account.messages.create({:to => @hex_message.normalize_to,
                                           :from => TWILIO_CALLER_ID,
                                           :body => ActionController::Base.helpers.strip_tags(@hex_message.hex.hex_text)})

        redirect_to @hex_message
      else
        redirect_to root_url, alert: 'Forces conspired to deny your hex.'
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
