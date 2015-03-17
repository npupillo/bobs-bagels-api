

class ChargesController < ApplicationController

    def index
        @charges = Charge.all
        render json: @charges
    end

    private

    def charge_params
        params.require(:charge).permit(:charge, :cart, :token, :store_info, :customer_id) #the front end will have to store the customer id
    end
end
