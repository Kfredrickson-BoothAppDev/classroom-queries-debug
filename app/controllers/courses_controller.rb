class CoursesController < ApplicationController
  def index
    matching_courses = Course.all

    @list_of_courses = matching_courses.order({ :created_at => :desc })
    render({ :template => "courses/index.html.erb" })
  end

  def show
  the_id = params.fetch("path_id")
  @the_course = Course.find(the_id)
  render({ :template => "courses/show.html.erb" })
end

end
