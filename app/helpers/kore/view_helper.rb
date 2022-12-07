module Kore
  module ViewHelper

    ADMIN_HELPERS = {
      example: 'ExampleComponent',
      button: 'ButtonComponent',
    }.freeze

    ADMIN_HELPERS.each do |name, component|
      define_method name.to_s do |*args, **kwargs, &block|
        render "Kore::#{component}".constantize.new(*args, **kwargs), &block
      end
    end

    include ActionView::Helpers::UrlHelper
    alias rails_default_link_to link_to

    def link_to(name = nil, options = nil, html_options = nil, &block)
      custom_options = html_options.extract!(:left_icon, :right_icon, :variant, :size, :type) if html_options
      if custom_options.present? || name.nil?
        return rails_default_link_to(options, html_options.merge(role: :button)) do
          render Kore::ButtonComponent.new(name, **custom_options.merge(tag: :span)), &block
        end
      end

      rails_default_link_to(name, options, html_options, &block)
    end
  end
end
