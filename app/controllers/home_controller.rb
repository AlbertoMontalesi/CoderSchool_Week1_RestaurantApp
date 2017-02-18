
class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections = Section.all
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
      @food_items = @current_section.food_items
    else
      @food_items = FoodItem.all
      
    
  end

   
    if params[:sort_column]
      
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
      ## fix the code to make the sort function work

 

 
  end

  

end
end
