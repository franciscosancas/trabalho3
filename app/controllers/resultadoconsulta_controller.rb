class ResultadoconsultaController < ApplicationController
  before_action :set_resultadoconsultum, only: [:show, :edit, :update, :destroy]

  # GET /resultadoconsulta
  # GET /resultadoconsulta.json
  def index
    @resultadoconsulta = Resultadoconsultum.all
  end

  # GET /resultadoconsulta/1
  # GET /resultadoconsulta/1.json
  def show
  end

  # GET /resultadoconsulta/new
  def new
    @resultadoconsultum = Resultadoconsultum.new
  end

  # GET /resultadoconsulta/1/edit
  def edit
  end

  # POST /resultadoconsulta
  # POST /resultadoconsulta.json
  def create
    @resultadoconsultum = Resultadoconsultum.new(resultadoconsultum_params)
	

	require 'nokogiri'
	
	@doc = Nokogiri::XML(File.open("exemplos/emplo.xml"))

	car_tires = @doc.xpath("//firstname")
	
	doc = Nokogiri::XML(File.open("emplo.xml"))
	doc.xpath('firstname').each do
		car_tires
	end

	 
    respond_to do |format|
      if @resultadoconsultum.save
        format.html { redirect_to @resultadoconsultum, notice: car_tires }
        format.json { render :show, status: :created, location: @resultadoconsultum }
      else
        format.html { render :new }
        format.json { render json: @resultadoconsultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultadoconsulta/1
  # PATCH/PUT /resultadoconsulta/1.json
  def update
    respond_to do |format|
      if @resultadoconsultum.update(resultadoconsultum_params)
        format.html { redirect_to @resultadoconsultum, notice: '' }
        format.json { render :show, status: :ok, location: @resultadoconsultum }
      else
        format.html { render :edit }
        format.json { render json: @resultadoconsultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultadoconsulta/1
  # DELETE /resultadoconsulta/1.json
  def destroy
    @resultadoconsultum.destroy
    respond_to do |format|
      format.html { redirect_to resultadoconsulta_url, notice: 'Linha apagada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resultadoconsultum
      @resultadoconsultum = Resultadoconsultum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resultadoconsultum_params
      params.require(:resultadoconsultum).permit(:resultado)
    end
end
