class LessonsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    # @teachers = Teacher.all
    # if !@teachers.include? params[:instructor]
    #   Teacher.new(first_name: "#{params[:instructor]}", studio_id: "#{params[:studio_id]}")
    # else
    #   @teachers.each do |teacher|
    #     if params[:teacher] == teacher && params[:studio_id] == teacher.studio_id
    #     @lesson.teacher_id = teacher.id
    #     end
    #   end
    # end
    if @lesson.save
      redirect_to new_lesson_path
      flash[:notice] = "This class has been created successfully"
    else
      render :new
    end
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect to lessons_url
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:studio_id, :day_id, :body_id,:type_id, :time_id, :name,:start_time, :end_time, :teacher_id)
  end

end
