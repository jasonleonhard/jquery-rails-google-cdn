module Jquery::Rails::Google::Cdn
  module ActionViewExtensions

    OFFLINE = (Rails.env.development? or Rails.env.test?)
    URL = {
      :google_jquery => "//ajax.googleapis.com/ajax/libs/jquery/#{JQUERY_VERSION}/jquery.min.js",
    }

    def jquery_url(name)
      URL[name]
    end

    def jquery_include_tag(name, options = {})
      return javascript_include_tag(:jquery, options) if OFFLINE and !options.delete(:force)

      [ javascript_include_tag(jquery_url(name), options),
        javascript_tag("window.jQuery || document.write(unescape('#{javascript_include_tag(:jquery, options).gsub('<','%3C')}'))")
      ].join("\n").html_safe
    end
  end

  class Railtie < Rails::Railtie
    initializer 'jquery-rails-google-cdn.action_view' do |app|
      ActiveSupport.on_load(:action_view) do
        include Jquery::Rails::Cdn::ActionViewExtensions
      end
    end
  end
end
