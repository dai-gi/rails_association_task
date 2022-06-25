class JapaneseFoodsController < ApplicationController
  before_action :set_japanese_food, only: %i[ show edit update destroy ]

  # GET /japanese_foods or /japanese_foods.json
  def index
    @japanese_foods = JapaneseFood.all
  end

  # GET /japanese_foods/1 or /japanese_foods/1.json
  def show
  end

  # GET /japanese_foods/new
  def new
    @japanese_food = JapaneseFood.new
  end

  # GET /japanese_foods/1/edit
  def edit
  end

  # POST /japanese_foods or /japanese_foods.json
  def create
    @japanese_food = JapaneseFood.new(japanese_food_params)

    respond_to do |format|
      if @japanese_food.save
        format.html { redirect_to @japanese_food, notice: "Japanese food was successfully created." }
        format.json { render :show, status: :created, location: @japanese_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @japanese_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /japanese_foods/1 or /japanese_foods/1.json
  def update
    respond_to do |format|
      if @japanese_food.update(japanese_food_params)
        format.html { redirect_to @japanese_food, notice: "Japanese food was successfully updated." }
        format.json { render :show, status: :ok, location: @japanese_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @japanese_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /japanese_foods/1 or /japanese_foods/1.json
  def destroy
    @japanese_food.destroy
    respond_to do |format|
      format.html { redirect_to japanese_foods_url, notice: "Japanese food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_japanese_food
      @japanese_food = JapaneseFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def japanese_food_params
      params.fetch(:japanese_food, {})
    end
end
