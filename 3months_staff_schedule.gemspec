# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'staff_schedule/version'

Gem::Specification.new do |gem|
  gem.name          = "3months_staff_schedule"
  gem.version       = StaffSchedule::VERSION
  gem.authors       = ["Josh McArthur"]
  gem.email         = ["joshua.mcarthur@gmail.com"]
  gem.description   = %q{Generate a report from the 3months staff schedule}
  gem.summary       = %q{Generate a report from the 3months staff schedule}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "google_drive"
  gem.add_dependency "highline"
  gem.add_dependency "activesupport"
end
