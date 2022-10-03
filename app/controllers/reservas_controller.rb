class ReservasController < ApplicationController
  before_action :set_reserva, only: %i[ show edit update destroy ]

  # GET /reservas or /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1 or /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
  end

  # GET /reservas/1/edit
  def edit
  end

  # POST /reservas or /reservas.json
  def create
    @reserva = Reserva.new(reserva_params)
    @reserva.usuario = Usuario.first
    @reserva.veiculo = Veiculo.find(params['reserva']['veiculo_id'])
    respond_to do |format|
      if @reserva.save
        format.html { redirect_to reservas_path, notice: "A reserva foi criada com sucesso." }
        format.json { render :index, status: :created, location: @reserva }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1 or /reservas/1.json
  def update
    @reserva.veiculo = Veiculo.find(params['reserva']['veiculo_id'])
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to reservas_path, notice: "A reserva foi alterada com sucesso." }
        format.json { render :index, status: :ok, location: @reserva }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1 or /reservas/1.json
  def destroy
    @reserva.destroy

    respond_to do |format|
      format.html { redirect_to reservas_url, notice: "A reserva foi removida com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reserva_params
      params.require(:reserva).permit(:data_entrada, :data_saida, :hora_entrada, :hora_saida)
    end
end
