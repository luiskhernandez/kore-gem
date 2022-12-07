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

    TYPES = {
      normal: "",
      square: "btn-square",
      circle: "btn-circle"
    }

    SIZE = {
      xs: "btn-xs",
      sm: "btn-sm",
      md: "btn-md",
      lg: "btn-lg",
    }

    ICON_SIZES = {
      xs: "w-2 h-2",
      sm: "w-4 h-4",
      md: "w-6 h-6",
      lg: "w-8 h-8",
    }

    def initialize(text = nil, size: :md, variant: :normal, type: :normal, left_icon: nil, right_icon: nil, **options)
      @options = options
      @text = text
      @variant = variant
      @type = type
      @size = size
      @left_icon = left_icon
      @right_icon = right_icon
      options[:tag] ||= :button
      options[:classes] = class_names(
        "btn gap-2",
        css_classes,
        options[:classes]
      )
    end

    def css_classes
      "#{VARIANTS[@variant]} #{TYPES[@type]} #{SIZE[@size]}"
    end

    def normal?
      @type == :normal
    end

    def icon_classes
      ICON_SIZES[@size]
    end
  end
end
