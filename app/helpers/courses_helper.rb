module CoursesHelper



#	def sort_link(column, title = nil)
 # 		title ||= column.titleize
  	#	css_class = column == sort_column ? "current #{sort_direction}" : nil
 # 		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
 # 		link_to title, {:sort => column, :direction => direction}#, {:class => css_class}
#	end


  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
    icon = column == sort_column ? icon : ""
    link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
  end
end
