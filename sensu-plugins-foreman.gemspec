# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sensu-plugins-foreman/version'

Gem::Specification.new do |spec|
  spec.name          = 'sensu-plugins-foreman'
  spec.version       = SensuPluginsForeman::Version::STRING
  spec.authors       = ['SIC! Software GmbH', 'Florian Schwab']
  spec.email         = ['info@sic.software', 'me@ydkn.io']
  spec.summary       = 'This plugin provides checks for foreman'
  spec.description   = 'Sensu plugins for foreman'
  spec.homepage      = 'https://github.com/SICSoftwareGmbH/sensu-plugins-foreman'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/SICSoftwareGmbH/sensu-plugins-foreman/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
