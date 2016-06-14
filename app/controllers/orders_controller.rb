class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    @statuses = Status.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @statuses = Status.all
  end

  # GET /orders/1/edit
  def edit
    @statuses = Status.all
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @statuses = Status.all

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    @statuses = Status.all

    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def submit_order
    user = User.find(session[:user_id])
    order = Order.new
    order.user = user
    order.status = Status.find(1)
    if order.save
      params[:link].each do |id|
        
        link = Link.find(id)

        Link.update(id, :bottle => link.bottle, :order => order )
      end
      respond_to do | format |
        format.js {render "update_link"}
      end
    end



  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      #params.fetch(:order, {})
      params.require(:order).permit(:user_id, :status_id)
    end
end
