$:.unshift File.expand_path("../lib", __FILE__)
require "vagrant-darwin/version"

Gem::Specification.new do |s|
  s.name          = "vagrant-darwin"
  s.version       = VagrantPlugins::GuestDarwin::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = [ "Justin Bronn"]
  s.email         = "justin@counsyl.com"
  s.homepage      = "https://github.counsyl.com/dev/vagrant-darwin.git"
  s.summary       = "Enables Vagrant to work with Darwin (OS X) guests"
  s.description   = "Enables Vagrant to work with Darwin (OS X) guests"
  s.files         = Dir.glob('lib/**/*')
  s.require_paths = ["lib"]
  s.rubygems_version  = "1.3.6"
  s.rubyforge_project = "vagrant-darwin"
end
