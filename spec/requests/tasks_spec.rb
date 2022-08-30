require 'rails_helper'

RSpec.describe "TasksController", type: :request do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end
  
  it "task path" do
    get "/tasks"
    expect(response).to render_template("tasks/index")
  end

  it "task new" do
    get "/tasks/new"
    expect(response).to render_template("tasks/new")
  end

  it "task Edit" do
    task = Task.new
    task.id=1
    task.name="pythons"
    task.due_date=DateTime.now +2.week
    task.Status=false
    task.created_at=DateTime.now
    task.updated_at=DateTime.now
    task.user_no=37
    task.save
    get "/tasks/1/edit"
    expect(response).to render_template('tasks/edit')
  end

end
