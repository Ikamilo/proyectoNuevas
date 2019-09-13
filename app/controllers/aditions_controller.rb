class AditionsController < ApplicationController
  before_action :set_adition, only: [:show, :edit, :update, :destroy]

  # GET /aditions
  # GET /aditions.json
  def index
    @aditions = Adition.pz_ing
    #@aditions = Adition.all
  end

  # GET /aditions/1
  # GET /aditions/1.json
  def show
    pizza = Pizza.find_by(id: $pz)
    precio_ingrediente = Ingredient.find_by(id: Adition.find_by(id: params[:id]).ingredient_id).price
    pizza.update(total_prices: pizza.total_prices + precio_ingrediente)
    redirect_to "/users/#{$us}/pizzas/#{$pz}/aditions/new"
  end

  # GET /aditions/new
  def new
    @adition = Adition.new
  end

  # GET /aditions/1/edit
  def edit
  end

  # POST /aditions
  # POST /aditions.json
  def create
    @adition = Adition.new(adition_params)

    respond_to do |format|
      if @adition.save
        format.html { redirect_to @adition, notice: 'Adition was successfully created.' }
        format.json { render :show, status: :created, location: @adition }
      else
        format.html { render :new }
        format.json { render json: @adition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aditions/1
  # PATCH/PUT /aditions/1.json
  def update
    respond_to do |format|
      if @adition.update(adition_params)
        format.html { redirect_to @adition, notice: 'Adition was successfully updated.' }
        format.json { render :show, status: :ok, location: @adition }
      else
        format.html { render :edit }
        format.json { render json: @adition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aditions/1
  # DELETE /aditions/1.json
  def destroy
    @adition.destroy
    respond_to do |format|
      format.html { redirect_to aditions_url, notice: 'Adition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adition
      @adition = Adition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adition_params
      params.require(:adition).permit(:pizza_id, :ingredient_id)
    end
end
