module Jquery::Rails
  module Google
    module CDN
      class Railtie < Rails::Railtie
        initializer "jquery-rails-google-cdn.view_helpers" do
          ActionView::Base.send :include, Jquery::Rails::Google::CDN::ViewHelpers
        end
      end
    end
  end
end
