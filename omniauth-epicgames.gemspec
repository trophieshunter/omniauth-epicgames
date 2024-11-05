# frozen_string_literal: true

require_relative "lib/omniauth-epicgames/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-epicgames"
  spec.version = OmniAuth::EpicGames::VERSION
  spec.authors = ["trophieshunter.com"]
  spec.email = ["support@trophieshunter.com"]

  spec.summary = "Omniauth Strategy for Epic Games."
  spec.description = "Omniauth Strategy for Epic Games OAuth Login."
  spec.homepage = "https://github.com/trophieshunter/omniauth-epicgames"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/trophieshunter/omniauth-epicgames"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth", "~> 1.0"
  spec.add_dependency "omniauth-oauth2", "~> 1.1"
end
