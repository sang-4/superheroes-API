class HeroPowersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, status: :created
    end

    private
    def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

end
