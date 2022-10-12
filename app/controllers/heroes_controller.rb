class HeroesController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

    def index
        @hero = Hero.all
        render json: @hero, status: :ok
    end

    def show
        @hero = Hero.find(params[:id])
        render json: @hero, serializer: HeroAndPowerSerializer,  status: :ok
    end

    private

    def not_found_response
        render json: { error: "Hero not found" }, status: :not_found
    end
end
