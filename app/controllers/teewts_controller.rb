class TeewtsController < ApplicationController
  before_action :authenticate_user!

  # GET /teewts or /teewts.json
  def index
    @teewts = Teewt.all
  end

  # GET /teewts/1 or /teewts/1.json
  def show
    @teewt = Teewt.find(params[:id])
  end

  # GET /teewts/new
  def new
    @teewt = current_user.teewts.new
  end

  # GET /teewts/1/edit
  def edit
    @teewt = current_user.teewts.find(params[:id])
  end

  # POST /teewts or /teewts.json
  def create
    @teewt = current_user.teewts.new(teewt_params)

    
      if @teewt.save
        redirect_to teewt_url(@teewt), notice: "Teewt was successfully created." 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /teewts/1 or /teewts/1.json
  def update
    @teewt = current_user.teewts.find(params[:id])   
      if @teewt.update(teewt_params)
        redirect_to teewt_url(@teewt), notice: "Teewt was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  # DELETE /teewts/1 or /teewts/1.json
  def destroy
    @teewt = current_user.teewts.find(params[:id])
    @teewt.destroy
    redirect_to teewts_url, notice: "Teewt was successfully destroyed." 
  end

  private

    # Only allow a list of trusted parameters through.
    def teewt_params
      params.require(:teewt).permit(:user_id, :conteudo, :photo)
    end
end
