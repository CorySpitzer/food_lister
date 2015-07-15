module ApplicationHelper
  def sortable(column)
    title = column.titleize
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil)
  end

  def get_arrow(sort_type)
    if params[:sort] == sort_type && params[:direction] == "asc"
      image_tag ("up.png"), class:"icon"
    else
      image_tag ("down.jpg"), class:"icon"
    end
  end

end
