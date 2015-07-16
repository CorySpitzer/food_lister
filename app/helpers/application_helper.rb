module ApplicationHelper
  def sortable(column)
    title = column.titleize
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction, :page => nil, :remote => true}
  end

  def get_arrow(column)
    if params[:sort] == column && params[:direction] == "asc"
      image_tag ("up.png"), class:"icon"
    elsif params[:sort] == column && params[:direction] == "desc"
      image_tag ("down.jpg"), class:"icon"
    else
      content_tag(:div, " ", class: "icon")    
    end
  end

end
