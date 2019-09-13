class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]

  # GET /pizzas
  # GET /pizzas.json
  def index
    @pizzas = Pizza.user_id
    $price = 0
    #@pizzas = Pizza.all
  end

  # GET /pizzas/1
  # GET /pizzas/1.json
  def show
    calcularTotal
    redirect_to pizzas_path
  end

  def calcularTotal
    pizza = Pizza.find_by(id: params[:id])
    $pz = pizza.id
    pizza.update(total_prices: Shape.find_by(id: @pizza.shape_id).price + Sauce.find_by(id: @pizza.sauce_id).price + Size.find_by(id: @pizza.size_id).price + Flavor.find_by(id: @pizza.flavor_id).price)
    pizza.save
  end

  # GET /pizzas/new
  def new
    @pizza = Pizza.new
  end

  # GET /pizzas/1/edit
  def edit
  end

  # POST /pizzas
  # POST /pizzas.json
  def create
    @pizza = Pizza.new(pizza_params)

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: 'Pizza was successfully created.' }
        format.json { render :show, status: :created, location: @pizza }
      else
        format.html { render :new }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizzas/1
  # PATCH/PUT /pizzas/1.json
  def update
    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: 'Pizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza }
      else
        format.html { render :edit }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza.destroy
    respond_to do |format|
      format.html { redirect_to pizzas_url, notice: 'Pizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_params
      params.require(:pizza).permit(:shape_id, :sauce_id, :flavor_id, :user_id, :size_id, :total_prices)
    end
end
