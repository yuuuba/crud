class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy ]
  
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

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title,:body)
  end
end
