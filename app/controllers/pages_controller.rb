class PagesController < ApplicationController
    def show
        render template: "pages/#{params[:page]}"
    end

    def create_checkout_session
        session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: [
            {
              price: 'price_123',
              quantity: 1,
            },
          ],
          mode: 'payment',
          success_url: root_url,
          cancel_url: root_url,
        )
    
        render json: { id: session.id }
    end
end 