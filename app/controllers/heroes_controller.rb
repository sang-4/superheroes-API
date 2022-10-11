class HeroesController < ApplicationController
    def index
        @hero = Hero.all
        render json: @hero, status: :ok
    end

    def show
        @hero = Hero.find(params[:id])
        render json: @hero, serializer: HeroAndPowerSerializer,  status: :ok
    end
end
