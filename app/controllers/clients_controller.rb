class ClientsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    clients = Client.all
    render json: clients
  end

  def show
    client = find_client
    render json: client
  end
  private

  def find_client
    Client.find(params[:id])
  end

  def render_not_found_response
    render json: {error: "Client not found"}, status: 404
  end

end
