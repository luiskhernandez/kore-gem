# frozen_string_literal: true
require "heroicon"

module Kore
  class Engine < ::Rails::Engine
    config.before_configuration do
    config.view_component.preview_paths << Kore.previews_path
    end

    Heroicon.configure do |config|
      config.variant = :solid
      config.default_class = {solid: "h-5 w-5", outline: "h-6 w-6"}
    end

    initializer "kore.helpers" do
      ActiveSupport.on_load(:action_controller_base) do
        helper Kore::ViewHelper
      end
    end
  end
end
