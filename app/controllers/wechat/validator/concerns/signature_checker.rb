module Wechat
  module Validator
    module Concerns

      module SignatureChecker

        extend ActiveSupport::Concern

        self.included do |includer|

          def check_signature(token)

            if token.blank?
              Rails.logger.warn 'Token is required to validate URL by Wechat.'
              render status: :forbidden, text: ''
              return
            end

            timestamp = params[:timestamp]
            nonce     = params[:nonce]
            signature = params[:signature]
            echo      = params[:echostr]

            return unless check_parameter 'timestamp', timestamp
            return unless check_parameter 'nonce',     nonce
            return unless check_parameter 'signature', signature
            return unless check_parameter 'echo',      echo

            actual_signature = ::Wechat::Validation.sign nonce, timestamp, token
            Rails.logger.warn "Actual signature is #{actual_signature}, which #{signature==actual_signature ? 'equals' : 'does not equal'} to the given signature #{signature}."
            render text: (signature==actual_signature ? echo : '')

          end

          def check_parameter(name, value)
            if value.blank?
              Rails.logger.warn "The #{name} parameter is blank. Failed to validate URL by Wechat."
              render status: :bad_request, text: ''
            end
            value.present?
          end

        end

        module ClassMethods
          # def method_name do end
        end

      end

    end
  end
end
