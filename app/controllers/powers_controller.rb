class PowersController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        @power = Power.all
        render json: @power, status: :ok
    end

    def show
        @power = Power.find(params[:id])
        render json: @power, status: :ok
    end

    def update
        power = Power.find_by!(id: params[:id])
        power.update!(power_params)
        render json: power
      end
    

    private

    def not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end

    def power_params
        params.permit(:description)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
end
