# lib/my_gem/view_helpers.rb
module MyGem
  module ViewHelpers
    def pre(text)
      content_tag :pre, text
    end

    def another_helper
      # super secret stuff
    end
  end
end