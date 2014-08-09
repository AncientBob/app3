module ApplicationHelper

  #Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "App3, the best app on planet Zarflax"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
