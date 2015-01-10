class LessonsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @teachers = Teacher.all
    @teachers.each do |teacher|
      if params[:teacher] == teacher
        @lesson.teacher_id = teacher.id
      end
    end
    if @lesson.save
      redirect_to @lesson
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
    params.require(:lesson).permit(:studio_id, :teacher_id, :type_id, :time_id, :name,:start_time, :end_time, :teacher)
  end

end
