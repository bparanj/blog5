module ApplicationHelper
  def title(page_title)
    content_for(:title) do 
      page_title 
    end 
  end
  
  def admin_area(&block)
    # content_tag(:div, block.call, class: 'admin')
    
    concat('<div class="admin">', block.binding)
    yield
    concat('</div>', block.binding)
  end
end