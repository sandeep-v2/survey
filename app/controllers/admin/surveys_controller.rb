class Admin::SurveysController < ApplicationController
  layout :layout_by_user
  before_filter :authenticate_user!
  before_filter :ensure_admin_user

  # GET /admin/surveys
  # GET /admin/surveys.json
  def index
    @admin_surveys = Admin::Survey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_surveys }
    end
  end

  # GET /admin/surveys/1
  # GET /admin/surveys/1.json
  def show
    @admin_survey = Admin::Survey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_survey }
    end
  end

  # GET /admin/surveys/new
  # GET /admin/surveys/new.json
  def new
    @admin_survey = Admin::Survey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_survey }
    end
  end

  # GET /admin/surveys/1/edit
  def edit
    @admin_survey = Admin::Survey.find(params[:id])
  end

  # POST /admin/surveys
  # POST /admin/surveys.json
  def create
    @admin_survey = Admin::Survey.new(params[:admin_survey])

    respond_to do |format|
      if @admin_survey.save
        format.html { redirect_to @admin_survey, notice: 'Survey was successfully created.' }
        format.json { render json: @admin_survey, status: :created, location: @admin_survey }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/surveys/1
  # PUT /admin/surveys/1.json
  def update
    @admin_survey = Admin::Survey.find(params[:id])

    respond_to do |format|
      if @admin_survey.update_attributes(params[:admin_survey])
        format.html { redirect_to @admin_survey, notice: 'Survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/surveys/1
  # DELETE /admin/surveys/1.json
  def destroy
    @admin_survey = Admin::Survey.find(params[:id])
    @admin_survey.destroy

    respond_to do |format|
      format.html { redirect_to admin_surveys_url }
      format.json { head :no_content }
    end
  end
end
