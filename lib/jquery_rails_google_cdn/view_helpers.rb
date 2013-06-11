module Jquery::Rails
  module Google
    module CDN
      module ViewHelpers

        def jquery_include_tag(version = nil)
          version ||= Jquery::Rails::JQUERY_VERSION

          [ javascript_include_tag("//ajax.googleapis.com/ajax/libs/jquery/#{version}/testme.jquery.min.js"),
            javascript_tag("window.jQuery || document.write(unescape('#{javascript_include_tag('jquery/jquery.min').gsub('<','%3C')}'))")
          ].join("\n").html_safe

        end
      end
    end
  end
end