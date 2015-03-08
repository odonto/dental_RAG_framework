class ExaminationsController < ApplicationController
  before_filter :get_patient
  before_action :set_examination, only: [:show, :edit, :update, :destroy]

  # GET /examinations
  def index
    @examinations = Examination.all
  end

  # GET /examinations/1
  def show
  end

  # GET /examinations/new
  def new
    @examination = Examination.new
    @examination.patient = @patient
    @examination.categories << Category.find_by_name('Caries (Tooth Decay)').dup
    @examination.categories << Category.find_by_name('Tooth Surface Loss').dup
    @examination.categories << Category.find_by_name('Periodontal Disease (Gum Disease)').dup
    @examination.categories << Category.find_by_name('Soft Tissue (Mouth Cancer)').dup
  end

  # GET /examinations/1/edit
  def edit
  end

  # POST /examinations
  def create
    @examination = Examination.new(examination_params)

    if @examination.save
      redirect_to @examination, notice: 'Examination was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /examinations/1
  def update
    if @examination.update(examination_params)
      redirect_to @examination, notice: 'Examination was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /examinations/1
  def destroy
    @examination.destroy
    redirect_to examinations_url, notice: 'Examination was successfully destroyed.'
  end

  protected

  def get_patient
    @patient = Patient.find(params[:patient_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_examination
    @examination = Examination.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def examination_params
    params.require(:examination).permit(:date_taken, :patient_id,
                                        categories_attributes: [:id, :name,
                                                                clinical_factors: [], patient_factors: []])
  end
end
