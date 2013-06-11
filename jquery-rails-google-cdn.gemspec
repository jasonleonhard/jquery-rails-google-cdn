# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|

  gem.authors       = ["Chris Hough"]
  gem.email         = ["founders@noconformity.com"]
  gem.description   = %q{Use the Google CDN to serve jquery and fall back to the local version if the CDN is unreachable.}
  gem.summary       = %q{A gem to serve jQuery from the Google CDN with fall back protection.}
  gem.homepage      = "https://github.com/chrishough/jquery-rails-google-cdn"

  gem.files         = ["lib/jquery-rails-google-cdn.rb"]
  gem.name          = "jquery-rails-google-cdn"
  gem.rubyforge_project = "jquery rails google cdn"
  gem.require_paths = ["lib"]
  gem.licenses      = ['GPL']
  gem.version       = Jquery::Rails::Google::Cdn::VERSION

end
