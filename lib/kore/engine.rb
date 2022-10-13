# frozen_string_literal: true

module Kore
  class Engine < ::Rails::Engine
    config.before_configuration do
    config.view_component.preview_paths << Kore.previews_path
    end

    initializer "kore.helpers" do
      ActiveSupport.on_load(:action_controller_base) do
        helper Kore::ViewHelper
      end
    end
  end
end
