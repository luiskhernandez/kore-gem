module Kore
  module ViewHelper
    ADMIN_HELPERS = {
      example: 'ExampleComponent',
    }.freeze

    ADMIN_HELPERS.each do |name, component|
      define_method name.to_s do |*args, **kwargs, &block|
        render "Kore::#{component}".constantize.new(*args, **kwargs), &block
      end
    end
  end
end
