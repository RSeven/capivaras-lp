class ContactController < ApplicationController
  def create
    ContactMailer.with(
      name: contact_params[:nome],
      email: contact_params[:email],
      message: contact_params[:mensagem]
    ).client_message.deliver_now

    flash.now[:success] = "Your message has been sent successfully."

    respond_to do |format|
      format.turbo_stream {}
      format.html {}
    end
  end

  private
  
  def contact_params
    params.require(:contact).permit(:nome, :email, :mensagem)
  end
end
