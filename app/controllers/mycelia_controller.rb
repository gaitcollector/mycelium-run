class MyceliaController < ApplicationController
  before_action :set_mycelium, only: [:show, :edit, :update, :destroy]

  # GET /mycelia
  # GET /mycelia.json
  def index
    @mycelia = Mycelium.all
  end

  # GET /mycelia/1
  # GET /mycelia/1.json
  def show
  end

  # GET /mycelia/new
  def new
    @mycelium = Mycelium.new
  end

  # GET /mycelia/1/edit
  def edit
  end

  # POST /mycelia
  # POST /mycelia.json
  def create
    @mycelium = Mycelium.new(mycelium_params)

    respond_to do |format|
      if @mycelium.save
        format.html { redirect_to @mycelium, notice: 'Mycelium was successfully created.' }
        format.json { render :show, status: :created, location: @mycelium }
      else
        format.html { render :new }
        format.json { render json: @mycelium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycelia/1
  # PATCH/PUT /mycelia/1.json
  def update
    respond_to do |format|
      if @mycelium.update(mycelium_params)
        format.html { redirect_to @mycelium, notice: 'Mycelium was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycelium }
      else
        format.html { render :edit }
        format.json { render json: @mycelium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycelia/1
  # DELETE /mycelia/1.json
  def destroy
    @mycelium.destroy
    respond_to do |format|
      format.html { redirect_to mycelia_url, notice: 'Mycelium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycelium
      @mycelium = Mycelium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mycelium_params
      params.require(:mycelium).permit(:name)
    end
end
