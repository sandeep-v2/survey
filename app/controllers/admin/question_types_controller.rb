class Admin::QuestionTypesController < ApplicationController
  # GET /admin/question_types
  # GET /admin/question_types.json
  before_filter :get_field_types, :only => [:new, :edit]

  def index
    @admin_question_types = Admin::QuestionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_question_types }
    end
  end

  # GET /admin/question_types/1
  # GET /admin/question_types/1.json
  def show
    @admin_question_type = Admin::QuestionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_question_type }
    end
  end

  # GET /admin/question_types/new
  # GET /admin/question_types/new.json
  def new
    @admin_question_type = Admin::QuestionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_question_type }
    end
  end

  # GET /admin/question_types/1/edit
  def edit
    @admin_question_type = Admin::QuestionType.find(params[:id])
  end

  # POST /admin/question_types
  # POST /admin/question_types.json
  def create
    @admin_question_type = Admin::QuestionType.new(params[:admin_question_type])

    respond_to do |format|
      if @admin_question_type.save
        format.html { redirect_to @admin_question_type, notice: 'Question type was successfully created.' }
        format.json { render json: @admin_question_type, status: :created, location: @admin_question_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_question_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/question_types/1
  # PUT /admin/question_types/1.json
  def update
    @admin_question_type = Admin::QuestionType.find(params[:id])

    respond_to do |format|
      if @admin_question_type.update_attributes(params[:admin_question_type])
        format.html { redirect_to @admin_question_type, notice: 'Question type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_question_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/question_types/1
  # DELETE /admin/question_types/1.json
  def destroy
    @admin_question_type = Admin::QuestionType.find(params[:id])
    @admin_question_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_question_types_url }
      format.json { head :no_content }
    end
  end

  def check_field_optionable
    ft = FieldType.find(params[:field_id])
   flag = ( ft.present? && ft.is_optionable ) ? "yes" : "no"
    render :text => flag
  end
end
