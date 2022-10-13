# frozen_string_literal: true

# The Dummy class is responsible for ...
module Kore
  class ExampleComponent < ViewComponent::Base
    def initialize(title:)
      @title = title
      super
    end
  end
end
