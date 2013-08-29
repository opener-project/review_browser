module ReviewBrowser
  module ApplicationHelper

    def random_stars
      content = ""
      full = rand(5)
      empty = 5 - full

      full.times do
        content << content_tag(:span, nil, :class=>"glyphicon glyphicon-star")
      end

      empty.times do
        content << content_tag(:span, nil, :class=>"glyphicon glyphicon-star-empty")
      end
      content.html_safe
    end

    def quotify(text)
     "``...#{text}...''"
    end
  end

end



