require_relative "lib/kore/version"

Gem::Specification.new do |spec|
  spec.name        = "kore"
  spec.version     = Kore::VERSION
  spec.authors     = ["Luis C Hernández"]
  spec.email       = ["luis.macias@koombea.com"]
  spec.homepage    = "https://www.koombea.com"
  spec.summary     = " Summary of Kore::Gem."
  spec.description = " Description of Kore::Gem."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/koombea/kore-gem"
  spec.metadata["changelog_uri"] = "http://github.com/koombea/kore-gem/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib,test}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
  spec.add_dependency "view_component", ">= 2.74.1"
  spec.add_dependency "lookbook", ">= 1.1.1"
end
