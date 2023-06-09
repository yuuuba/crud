class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy]
  
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
    if @todo.update(todo_params)
      redirect_to todos_path
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_url, notice: "Todoが削除されました"
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title,:body)
  end
end
