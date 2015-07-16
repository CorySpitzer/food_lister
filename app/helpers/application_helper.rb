module ApplicationHelper
  def sortable(sort_type)
    title = sort_type.titleize
    direction = sort_type == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    link_to title, {:sort => sort_type, :direction => direction, :page => nil, :remote => true}
  end

  def get_arrow(sort_type)
    if params[:sort] == sort_type && params[:direction] == "asc"
      image_tag ("up.png"), class:"icon"
    elsif params[:sort] == sort_type && params[:direction] == "desc"
      image_tag ("down.jpg"), class:"icon"
    else
content_tag(:div, " ", class: "icon")    end
  end

end
