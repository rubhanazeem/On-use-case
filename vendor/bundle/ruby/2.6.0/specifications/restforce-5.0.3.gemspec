# -*- encoding: utf-8 -*-
# stub: restforce 5.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "restforce".freeze
  s.version = "5.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/restforce/restforce/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/restforce/restforce" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Rogers".freeze, "Eric J. Holmes".freeze]
  s.date = "2020-09-08"
  s.description = "A lightweight Ruby client for the Salesforce REST API".freeze
  s.email = ["me@timrogers.co.uk".freeze, "eric@ejholmes.net".freeze]
  s.homepage = "https://restforce.github.io/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.0.8".freeze
  s.summary = "A lightweight Ruby client for the Salesforce REST API".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, ["<= 2.0", ">= 0.9.0"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, [">= 0.8.8", "<= 2.0"])
      s.add_runtime_dependency(%q<jwt>.freeze, [">= 1.5.6"])
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 1.2.0", "< 5.0"])
      s.add_development_dependency(%q<faye>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.90.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.19.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.8.3"])
    else
      s.add_dependency(%q<faraday>.freeze, ["<= 2.0", ">= 0.9.0"])
      s.add_dependency(%q<faraday_middleware>.freeze, [">= 0.8.8", "<= 2.0"])
      s.add_dependency(%q<jwt>.freeze, [">= 1.5.6"])
      s.add_dependency(%q<hashie>.freeze, [">= 1.2.0", "< 5.0"])
      s.add_dependency(%q<faye>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.14.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.90.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.19.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.8.3"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, ["<= 2.0", ">= 0.9.0"])
    s.add_dependency(%q<faraday_middleware>.freeze, [">= 0.8.8", "<= 2.0"])
    s.add_dependency(%q<jwt>.freeze, [">= 1.5.6"])
    s.add_dependency(%q<hashie>.freeze, [">= 1.2.0", "< 5.0"])
    s.add_dependency(%q<faye>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.90.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.19.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.8.3"])
  end
end
