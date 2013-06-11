module Jquery::Rails
  module Google
    module CDN
      class Railtie < Rails::Railtie
        initializer "jquery_rails_google_cdn.view_helpers" do
          Rails.logger.debug "OH HI I'M INJECTING YOU WITH MY SEED"
          ActionView::Base.send :include, Jquery::Rails::Google::CDN::ViewHelpers
        end
      end
    end
  end
end
