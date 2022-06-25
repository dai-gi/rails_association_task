class ChineseFoodsController < ApplicationController
  before_action :set_chinese_food, only: %i[ show edit update destroy ]

  # GET /chinese_foods or /chinese_foods.json
  def index
    @chinese_foods = ChineseFood.all
  end

  # GET /chinese_foods/1 or /chinese_foods/1.json
  def show
  end

  # GET /chinese_foods/new
  def new
    @chinese_food = ChineseFood.new
  end

  # GET /chinese_foods/1/edit
  def edit
  end

  # POST /chinese_foods or /chinese_foods.json
  def create
    @chinese_food = ChineseFood.new(chinese_food_params)

    respond_to do |format|
      if @chinese_food.save
        format.html { redirect_to @chinese_food, notice: "Chinese food was successfully created." }
        format.json { render :show, status: :created, location: @chinese_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chinese_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chinese_foods/1 or /chinese_foods/1.json
  def update
    respond_to do |format|
      if @chinese_food.update(chinese_food_params)
        format.html { redirect_to @chinese_food, notice: "Chinese food was successfully updated." }
        format.json { render :show, status: :ok, location: @chinese_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chinese_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chinese_foods/1 or /chinese_foods/1.json
  def destroy
    @chinese_food.destroy
    respond_to do |format|
      format.html { redirect_to chinese_foods_url, notice: "Chinese food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chinese_food
      @chinese_food = ChineseFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chinese_food_params
      params.fetch(:chinese_food, {})
    end
end
