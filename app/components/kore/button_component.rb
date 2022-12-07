# frozen_string_literal: true

# The Dummy class is responsible for ...
module Kore
  class ButtonComponent < ApplicationComponent
    include Heroicon::Engine.helpers
    VARIANTS = {
      primary: "btn-primary",
      secondary: "btn-secondary",
      accent: "btn-accent",
      info: "btn-info",
      success: "btn-success",
      warning: "btn-warning",
      error: "btn-error",
      ghost: "btn-ghost",
      link: "btn-link",
      outline: "btn-outline",
    }
    def initialize(text = nil, variant: :normal, left_icon: nil, right_icon: nil, **options)
      @options = options
      @text = text
      @variant = variant
      @left_icon = left_icon
      @right_icon = right_icon
      options[:tag] ||= :button
      options[:classes] = class_names(
        "btn",
        css_classes,
        options[:classes]
      )
    end

    def css_classes
      VARIANTS[@variant]
    end
  end
end
