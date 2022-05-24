# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  respond_to :json

  def show
    render json: { message: "Logged." }, status: :ok
  end
end
