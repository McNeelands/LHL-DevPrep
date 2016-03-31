module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    return markdown.render(text).html_safe
  end

  def active_page(active_page)
     @active == active_page ? "active" : ""
  end

end
