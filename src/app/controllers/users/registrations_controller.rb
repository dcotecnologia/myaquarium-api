# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private
    def respond_with(resource, _opts = {})
      resource.persisted? ? register_success(resource) : register_failed(resource)
    end

    def register_success(resource)
      render json: { message: "Signed up." }
    end

    def register_failed(resource)
      render json: { message: "Signed up failure.", errors: resource.errors }
    end
end
