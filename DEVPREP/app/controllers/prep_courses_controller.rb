class PrepCoursesController < ApplicationController
  before_action :set_prep_course, only: [:show, :edit, :update, :destroy]

  # GET /prep_courses
  # GET /prep_courses.json

  def html
  end

  def javascript
  end

  def ruby
  end

  def git
  end

  def login
  end

  def index
    @users = User.all
  end

  def intro
  end

  def prototype
  end

  def submit
  end

  # GET /prep_courses/1
  # GET /prep_courses/1.json
#  def show
#  end
#
#  # GET /prep_courses/new
#  def new
#    @prep_course = PrepCourse.new
#  end
#
#  # GET /prep_courses/1/edit
#  def edit
#  end

  # POST /prep_courses
  # POST /prep_courses.json
#  def create
#    @prep_course = PrepCourse.new(prep_course_params)
#
#    respond_to do |format|
#      if @prep_course.save
#        format.html { redirect_to @prep_course, notice: 'Prep course was successfully created.' }
#        format.json { render :show, status: :created, location: @prep_course }
#      else
#        format.html { render :new }
#        format.json { render json: @prep_course.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # PATCH/PUT /prep_courses/1
  # PATCH/PUT /prep_courses/1.json
#  def update
#    respond_to do |format|
#      if @prep_course.update(prep_course_params)
#        format.html { redirect_to @prep_course, notice: 'Prep course was successfully updated.' }
#        format.json { render :show, status: :ok, location: @prep_course }
#      else
#        format.html { render :edit }
#        format.json { render json: @prep_course.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # DELETE /prep_courses/1
  # DELETE /prep_courses/1.json
#  def destroy
#    @prep_course.destroy
#    respond_to do |format|
#      format.html { redirect_to prep_courses_url, notice: 'Prep course was successfully destroyed.' }
#      format.json { head :no_content }
#    end
#  end

#  private
#    # Use callbacks to share common setup or constraints between actions.
#    def set_prep_course
#      @prep_course = PrepCourse.find(params[:id])
#    end
#
#    # Never trust parameters from the scary internet, only allow the white list through.
#    def prep_course_params
#      params.require(:prep_course).permit(:title, :description, :text)
#    end
end
