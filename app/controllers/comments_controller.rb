class CommentsController < ApplicationController
    def create
         
    # NEED TO IMPLEMENT A VALIDATION TO AVOID BLANK COMMENTS
    @food_items = FoodItem.find(params[:food_item_id])
    @comment = @food_items.comments.create(comment_params)
    redirect_to food_item_path(@food_items)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
