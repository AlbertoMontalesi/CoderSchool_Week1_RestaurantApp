class OrdersController < ApplicationController

    def new
        @item = FoodItem.find(params[:food_item_id])
        @order = @item.orders.build
    end
end
