class GymsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    render json: Gym.all
  end

  def show
    gym = find_gym
    render json: gym
  end

  def destroy
    gym = find_gym
    gym.destroy
    head :no_content
  end

  private

  def find_gym
    Gym.find(params[:id])
  end

  def render_not_found_response
    render json: { errors: 'gym not found' }, status: :not_found
  end

end
