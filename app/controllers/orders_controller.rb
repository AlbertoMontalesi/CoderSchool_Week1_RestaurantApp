class OrdersController < ApplicationController
    
    
    def new
        @item = FoodItem.find(params[:food_item_id])
        @order = @item.orders.build
    end

    def create
        @item = FoodItem.find(params[:food_item_id])
        @order = @item.orders.build order_params
        

        if @order.save
            redirect_to orders_path, flash: {success: "Order is successfull"}   #not yet dsplaying
        else
        render 'new'
        end
    
    end

    def order_params
        params.require(:order).permit(:quantity)   #due to security reason, only update certain columns
    end

end
