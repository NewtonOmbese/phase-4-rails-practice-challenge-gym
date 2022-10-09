class MembershipsController < ApplicationController

  def create
    membership = Membership.create(create_membership)
    render json: membership
  end

  private

  def create_membership
    params.permit(:gym_id, :client_id, :charge)
  end

end
