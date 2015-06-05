module StaticPagesHelper
  def activate_link(active, text, path, html_options={})
    html_options.merge!(class: 'active_item') if active
    link_to(text, path, html_options)
  end
end
