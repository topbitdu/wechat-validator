module Wechat
  module Validator

    class Engine < ::Rails::Engine

      #config.autoload_paths += %W(
      #  #{config.root}/lib
      #  #{config.root}/app/controllers/wechat/validator/concerns
      #)

      #config.eager_load_paths += %W(
      #  #{config.root}/lib
      #  #{config.root}/app/controllers/wechat/validator/concerns
      #)

      isolate_namespace Wechat::Validator

    end

  end
end
