class OrdersController < ApplicationController
    
    def index
        @order = Order.all
    end

    def new
        @item = FoodItem.find(params[:food_item_id])
        @order = @item.orders.build
    end

    def create
        @order = Order.all
        @item = FoodItem.find(params[:food_item_id])
        @order = @item.orders.build order_params
        

        if @order.save
            redirect_to food_item_orders_path, flash: {success: "Order is successfull"}   #not yet dsplaying
        else
        render 'new'
        end
    
    end

    def show
    end

    def order_params
        params.require(:order).permit(:quantity, :name, :surname, :address, :phone)   #due to security reason, only update certain columns
    end

end
