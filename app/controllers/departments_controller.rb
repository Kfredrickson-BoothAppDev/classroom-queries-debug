class DepartmentsController < ApplicationController
  def index
    @list_of_departments = Department.order(created_at: :desc)
    render({ template: "departments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @the_department = Department.find(the_id)
    render({ template: "departments/show.html.erb" })
  end
end
