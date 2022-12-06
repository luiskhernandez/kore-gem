# frozen_string_literal: true

# The Dummy class is responsible for ...
module Kore
  class ButtonComponent < ViewComponent::Base
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
    def initialize(text, variant: :normal, left_icon: nil, right_icon: nil)
      @text = text
      @variant = variant
      @left_icon = left_icon
      @right_icon = right_icon
      super
    end

    def css_classes
      VARIANTS[@variant]
    end
  end
end
