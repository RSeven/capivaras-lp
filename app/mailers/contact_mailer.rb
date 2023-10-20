class ContactMailer < ApplicationMailer
    default to: "lopes.ruan@gmail.com", from: "capivarasr.bandcontato@gmail.com"

    def client_message
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]
        
        mail(
            "reply-to": email_address_with_name(@email, @name),
            subject: "[Capivaras do Vale] Novo contato!"
        )
    end
end
