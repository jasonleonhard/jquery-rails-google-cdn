# lib/my_gem/view_helpers.rb

puts "VIEW HELPERS"

module Jquery::Rails::Google::CDN
  module ViewHelpers

    def jquery_include_tag(version = nil)
      version ||= Jquery::Rails::JQUERY_VERSION

      [ javascript_include_tag("//ajax.googleapis.com/ajax/libs/jquery/#{version}/jquery.min.js"),
        javascript_tag("window.jQuery || document.write(unescape('#{javascript_include_tag('jquery.min')}'))")
      ].join("\n").html_safe

    end

  end
end



# module Jquery::Rails::Google::Cdn
#   module ActionViewExtensions

#     OFFLINE = (Rails.env.development? or Rails.env.test?)
#     URL = {
#       :google_jquery => "//ajax.googleapis.com/ajax/libs/jquery/#{JQUERY_VERSION}/jquery.min.js"
#     }

#     def jquery_url(name)
#       URL[name]
#     end

#     def jquery_include_tag(name, options = {})
#       return javascript_include_tag(:jquery, options) if OFFLINE and !options.delete(:force)

#       [ javascript_include_tag(jquery_url(name), options),
#         javascript_tag("window.jQuery || document.write(unescape('#{javascript_include_tag(:jquery, options).gsub('<','%3C')}'))")
#       ].join("\n").html_safe
#     end
#   end
# "//ajax.googleapis.com/ajax/libs/jquery/#{JQUERY_VERSION}/jquery.min.js"


#     <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
#   <script>
#   //<![CDATA[
#   window.jQuery || document.write(unescape('%3Cscript src="/assets/jquery.min.js">%3C/script>'))
#   //]]>
#   </script>
#   <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
#   <script>
#   //<![CDATA[
#   window.jQuery.ui || document.write(unescape('%3Cscript src="/assets/jquery-ui.min.js">%3C/script>'))
#   //]]>
#   </script>
#   <%= javascript_include_tag 'application' %>

