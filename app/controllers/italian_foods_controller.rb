class ItalianFoodsController < ApplicationController
  before_action :set_italian_food, only: %i[ show edit update destroy ]

  # GET /italian_foods or /italian_foods.json
  def index
    @italian_foods = ItalianFood.all
  end

  # GET /italian_foods/1 or /italian_foods/1.json
  def show
  end

  # GET /italian_foods/new
  def new
    @italian_food = ItalianFood.new
  end

  # GET /italian_foods/1/edit
  def edit
  end

  # POST /italian_foods or /italian_foods.json
  def create
    @italian_food = ItalianFood.new(italian_food_params)

    respond_to do |format|
      if @italian_food.save
        format.html { redirect_to @italian_food, notice: "Italian food was successfully created." }
        format.json { render :show, status: :created, location: @italian_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @italian_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /italian_foods/1 or /italian_foods/1.json
  def update
    respond_to do |format|
      if @italian_food.update(italian_food_params)
        format.html { redirect_to @italian_food, notice: "Italian food was successfully updated." }
        format.json { render :show, status: :ok, location: @italian_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @italian_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /italian_foods/1 or /italian_foods/1.json
  def destroy
    @italian_food.destroy
    respond_to do |format|
      format.html { redirect_to italian_foods_url, notice: "Italian food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_italian_food
      @italian_food = ItalianFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def italian_food_params
      params.fetch(:italian_food, {})
    end
end
