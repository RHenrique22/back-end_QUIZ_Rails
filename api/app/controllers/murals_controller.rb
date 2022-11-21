class MuralsController < ApplicationController
  before_action :set_mural, only: [:show, :update, :destroy]

  # GET /murals
  def index
    @murals = Mural.all

    render json: @murals
  end

  # GET /murals/1
  def show
    render json: @mural
  end

  # POST /murals
  def create
    @mural = Mural.new(mural_params)

    if @mural.save
      render json: @mural, status: :created, location: @mural
    else
      render json: @mural.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /murals/1
  def update
    if @mural.update(mural_params)
      render json: @mural
    else
      render json: @mural.errors, status: :unprocessable_entity
    end
  end

  # DELETE /murals/1
  def destroy
    @mural.destroy
  end

  # POST /murals/perfil
  def findByPerfil
    @mural = Mural.where(perfil: params[:perfil])

    render json: @mural
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mural
      @mural = Mural.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mural_params
      params.require(:mural).permit(:mensagem, :like, :deslike, :perfil)
    end
end
