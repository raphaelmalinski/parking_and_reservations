class VeiculosController < ApplicationController
  before_action :set_veiculo, only: %i[ show edit update destroy ]

  # GET /veiculos or /veiculos.json
  def index
    @veiculos = Veiculo.all
  end

  # GET /veiculos/new
  def new
    @veiculo = Veiculo.new
  end

  # GET /veiculos/1/edit
  def edit
  end

  # POST /veiculos or /veiculos.json
  def create
    @veiculo = Veiculo.new(veiculo_params)
    @veiculo.usuario = Usuario.first
    respond_to do |format|
      if @veiculo.save
        format.html { redirect_to veiculos_path, notice: "O veículo foi cadastrado com sucesso." }
        format.json { render :index, status: :created, location: @veiculo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veiculos/1 or /veiculos/1.json
  def update
    respond_to do |format|
      if @veiculo.update(veiculo_params)
        format.html { redirect_to veiculos_path, notice: "O veículo alterado com sucesso." }
        format.json { render :index, status: :ok, location: @veiculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1 or /veiculos/1.json
  def destroy
    @veiculo.destroy

    respond_to do |format|
      format.html { redirect_to veiculos_url, notice: "O veículo foi removido com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veiculo
      @veiculo = Veiculo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def veiculo_params
      params.require(:veiculo).permit(:modelo, :marca, :ano, :placa)
    end
end
