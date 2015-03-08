class RagScoresController < ApplicationController
  before_action :set_rag_score, only: [:show, :edit, :update, :destroy]

  # GET /rag_scores
  def index
    @rag_scores = RagScore.all
  end

  # GET /rag_scores/1
  def show
  end

  # GET /rag_scores/new
  def new
    @rag_score = RagScore.new
  end

  # GET /rag_scores/1/edit
  def edit
  end

  # POST /rag_scores
  def create
    @rag_score = RagScore.new(rag_score_params)

    if @rag_score.save
      redirect_to @rag_score, notice: 'Rag score was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rag_scores/1
  def update
    if @rag_score.update(rag_score_params)
      redirect_to @rag_score, notice: 'Rag score was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rag_scores/1
  def destroy
    @rag_score.destroy
    redirect_to rag_scores_url, notice: 'Rag score was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rag_score
      @rag_score = RagScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rag_score_params
      params.require(:rag_score).permit(:date, :version, :caries_score, :tsl_score, :perio_score, :soft_tiss_score)
    end
end
