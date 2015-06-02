module StaticPagesHelper
  def activate_link(page, text, path)
    page ? link_to(text, path, class: "active_item") : link_to(text, path)
  end
end
