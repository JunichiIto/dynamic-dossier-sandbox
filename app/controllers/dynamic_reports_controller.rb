class DynamicReportsController < ApplicationController
  before_action :set_dynamic_report, only: [:show, :edit, :update, :destroy]

  # GET /dynamic_reports
  # GET /dynamic_reports.json
  def index
    @dynamic_reports = DynamicReport.all
  end

  # GET /dynamic_reports/1
  # GET /dynamic_reports/1.json
  def show
  end

  # GET /dynamic_reports/new
  def new
    @dynamic_report = DynamicReport.new
  end

  # GET /dynamic_reports/1/edit
  def edit
  end

  # POST /dynamic_reports
  # POST /dynamic_reports.json
  def create
    @dynamic_report = DynamicReport.new(dynamic_report_params)

    respond_to do |format|
      if @dynamic_report.save
        format.html { redirect_to @dynamic_report, notice: 'Dynamic report was successfully created.' }
        format.json { render :show, status: :created, location: @dynamic_report }
      else
        format.html { render :new }
        format.json { render json: @dynamic_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_reports/1
  # PATCH/PUT /dynamic_reports/1.json
  def update
    respond_to do |format|
      if @dynamic_report.update(dynamic_report_params)
        format.html { redirect_to @dynamic_report, notice: 'Dynamic report was successfully updated.' }
        format.json { render :show, status: :ok, location: @dynamic_report }
      else
        format.html { render :edit }
        format.json { render json: @dynamic_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_reports/1
  # DELETE /dynamic_reports/1.json
  def destroy
    @dynamic_report.destroy
    respond_to do |format|
      format.html { redirect_to dynamic_reports_url, notice: 'Dynamic report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_report
      @dynamic_report = DynamicReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dynamic_report_params
      params.require(:dynamic_report).permit(:name, :sql, report_params_attributes: %i(name param_type))
    end
end
