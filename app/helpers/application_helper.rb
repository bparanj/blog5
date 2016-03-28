module ApplicationHelper
  def title(page_title)
    content_for(:title) do 
      page_title 
    end 
  end
    # content_tag(:div, block.call, class: 'admin')
      
  def admin_area(&block)
    concat('<div class="admin">'.html_safe)
    yield
    concat('</div>'.html_safe)
  end

end