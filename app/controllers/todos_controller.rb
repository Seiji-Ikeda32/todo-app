class TodosController < ApplicationController
  def index
      @todos = Todo.all
  end

  def show
      @todo = Todo.find(params[:id])
  end

  def new
      @todo = Todo.new
  end

  def create
      @todo = Todo.new(todo_params)

    if @todo.save
      flash[:success] = '新しいタスクが正常に作成されました'
      redirect_to @todo
    else
      flash.now[:danger] = '新しいタスクが作成できませんでした'
      render :new
    end
  end

  def edit
      @todo = Todo.find(params[:id])
  end

  def update
      @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      flash[:success] = 'タスクは正常に更新されました'
      redirect_to @todo
    else
      flash.now[:danger] = 'タスクは更新できませんでした'
      render :edit
    end
  end

  def destroy
       @todo = Todo.find(params[:id])
    @todo.destroy

    flash[:success] = 'タスクが正常に削除されました'
    redirect_to todos_url
  end
  
  private
  
  def todo_params
    params.require(:todo).permit(:content, :title, :due, :name)
  end
  
end
