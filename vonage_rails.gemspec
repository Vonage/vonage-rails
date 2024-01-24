$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "vonage_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "vonage_rails"
  spec.version     = VonageRails::VERSION
  spec.authors     = ["Vonage"]
  spec.email       = ["devrel@vonage.com"]
  spec.homepage    = "https://github.com/Vonage/vonage-rails"
  spec.summary     = "This is a Rails initializer for Vonage\'s Ruby SDK. To use it you\'ll need a Vonage account. Sign up for free at https://www.vonage.com"
  spec.description = "Rails Initializer for Vonage\'s Ruby Server SDK"
  spec.license     = "MIT"

  spec.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency('jwt', '~> 2')
  spec.add_dependency('vonage', '~> 7.19.0')
  spec.add_dependency('dotenv-rails')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rails')
  spec.add_development_dependency('generator_spec')
  spec.add_development_dependency('simplecov', '~> 0.16')
  spec.add_development_dependency('coveralls', '~> 0.8.15')

  spec.metadata = {
    'homepage' => 'https://github.com/Vonage/vonage-rails',
    'source_code_uri' => 'https://github.com/Vonage/vonage-rails',
    'bug_tracker_uri' => 'https://github.com/Vonage/vonage-rails/issues',
    'changelog_uri' => 'https://github.com/Vonage/vonage-rails/blob/main/CHANGES.md'
}
end
