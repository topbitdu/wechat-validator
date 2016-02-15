class Wechat::Validator::ServerValidationsController < ::Wechat::Validator::ApplicationController

  include ::Wechat::Validator::Concerns::SignatureChecker

  def index

    token = Rails.application.secrets.wechat_validation_token
    check_signature token

  end

end