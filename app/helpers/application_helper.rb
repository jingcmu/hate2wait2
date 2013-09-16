module ApplicationHelper

  #based on the title for each page, return the full title
  def full_title(page_title)
    base_title = "Hate2wait"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
