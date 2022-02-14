class NclientesController < ApplicationController
  before_action :set_ncliente, only: %i[ show edit update destroy ]

  # GET /nclientes or /nclientes.json
  def index
    @nclientes = Ncliente.all
  end

  # GET /nclientes/1 or /nclientes/1.json
  def show
  end

  # GET /nclientes/new
  def new
    @ncliente = Ncliente.new
  end

  # GET /nclientes/1/edit
  def edit
  end

  # POST /nclientes or /nclientes.json
  def create
    @ncliente = Ncliente.new(ncliente_params)

    respond_to do |format|
      if @ncliente.save
        format.html { redirect_to ncliente_url(@ncliente), notice: "Ncliente was successfully created." }
        format.json { render :show, status: :created, location: @ncliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ncliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nclientes/1 or /nclientes/1.json
  def update
    respond_to do |format|
      if @ncliente.update(ncliente_params)
        format.html { redirect_to ncliente_url(@ncliente), notice: "Ncliente was successfully updated." }
        format.json { render :show, status: :ok, location: @ncliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ncliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nclientes/1 or /nclientes/1.json
  def destroy
    @ncliente.destroy

    respond_to do |format|
      format.html { redirect_to nclientes_url, notice: "Ncliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncliente
      @ncliente = Ncliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ncliente_params
      params.require(:ncliente).permit(:nome, :cpf)
    end
end
