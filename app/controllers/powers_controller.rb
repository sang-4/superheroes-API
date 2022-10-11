class PowersController < ApplicationController
    def index
        @power = Power.all
        render json: @power, status: :ok
    end
end
