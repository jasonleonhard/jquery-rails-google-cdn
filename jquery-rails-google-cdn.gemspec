# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-rails-cdn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Hough"]
  gem.email         = ["founders@noconformity.com"]
  gem.description   = %q{Use the Google CDN to serve jquery and fall back to the local version if the CDN is unreachable.}
  gem.summary       = %q{Use the Google CDN to serve jquery and fall back to the local version if the CDN is unreachable.}
  gem.homepage      = "https://github.com/chrishough/jquery-rails-google-cdn"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery-rails-google-cdn"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Rails::Cdn::VERSION
end
