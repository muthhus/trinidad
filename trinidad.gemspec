# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{trinidad}
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Calavera"]
  s.date = %q{2009-12-01}
  s.default_executable = %q{trinidad}
  s.email = %q{calavera@apache.org}
  s.executables = ["trinidad"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "History.txt",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/trinidad",
     "lib/trinidad.rb",
     "lib/trinidad/command_line_parser.rb",
     "lib/trinidad/core_ext.rb",
     "lib/trinidad/jars.rb",
     "lib/trinidad/rackup_web_app.rb",
     "lib/trinidad/rails_web_app.rb",
     "lib/trinidad/server.rb",
     "lib/trinidad/web_app.rb",
     "trinidad-libs/core-3.1.1.jar",
     "trinidad-libs/jasper-el.jar",
     "trinidad-libs/jasper-jdt.jar",
     "trinidad-libs/jasper.jar",
     "trinidad-libs/jetty-util-6.1.14.jar",
     "trinidad-libs/jruby-rack-0.9.5.jar",
     "trinidad-libs/jsp-2.1.jar",
     "trinidad-libs/jsp-api-2.1.jar",
     "trinidad-libs/servlet-api-2.5-6.1.14.jar",
     "trinidad-libs/tomcat-core.jar",
     "trinidad-libs/tomcat-dbcp.jar",
     "trinidad-libs/tomcat-jasper.jar"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://calavera.github.com/trinidad}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{trinidad}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Simple library to run rails applications into an embedded Tomcat}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/trinidad/command_line_parser_spec.rb",
     "spec/trinidad/server_spec.rb",
     "spec/trinidad/web_app_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0"])
    else
      s.add_dependency(%q<rack>, [">= 1.0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0"])
  end
end

