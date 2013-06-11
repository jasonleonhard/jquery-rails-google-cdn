# lib/my_gem/railtie.rb
require 'my_gem/view_helpers'
module MyGem
  class Railtie < Rails::Railtie
    initializer "my_gem.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end