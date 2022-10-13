require "kore/version"
require "kore/engine"

module Kore
  # Your code goes here...
  def self.root
    File.dirname __dir__
  end

  def self.previews_path
    "#{root}/test/components/previews"
  end
end
