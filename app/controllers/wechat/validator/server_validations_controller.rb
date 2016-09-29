class Wechat::Validator::ServerValidationsController < ::Wechat::Validator::ApplicationController

  include ::Wechat::Validator::Concerns::SignatureValidator

  def index

    token = Rails.application.secrets.wechat_validation_token
    validate_signature token

  end

  def create
    render text: ''
  end

end
