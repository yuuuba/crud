class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save!
      redirect_to todos_path
    end
  end

  def edit
    
  end

  def update
  end

  def destroy
  end

  private

  def todo_params
    params.require(:todo).permit(:title,:body)
  end
end
