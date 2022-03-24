# frozen_string_literal: true

module Api
    # Api::BaseController
    class BaseController < ActionController::API
      include ActionController::HttpAuthentication::Token::ControllerMethods
      before_action :authenticate
  
      private
  
      def authenticate
        authenticate_or_request_with_http_token do |token, _options|
          ActiveSupport::SecurityUtils.secure_compare(
            Rails.application.secrets.fetch(:API_AUTH_TOKEN),
            token
          )
        end
      end

    end
  end
  