# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |s|

  s.authors           = ["Chris Hough"]
  s.email             = ["founders@noconformity.com"]
  s.description       = %q{Use the Google CDN to serve jquery and fall back to the local version if the CDN is unreachable.}
  s.summary           = %q{A s to serve jQuery from the Google CDN with fall back protection.}
  s.homepage          = "https://github.com/chrishough/jquery-rails-google-cdn"

  s.files             = ["lib/jquery-rails-google-cdn.rb"]
  s.name              = "jquery-rails-google-cdn"
  s.require_paths     = ["lib"]
  s.licenses          = "GPL"
  s.version           = Jquery::Rails::Google::Cdn::VERSION

end
