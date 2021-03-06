class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :edit, :update, :destroy]

    def index
        @todos = Todo.all
    end

    def show
    end

    def new
        @todo = Todo.new
    end

    def edit
    end

    def create
        @todo = Todo.new(todo_params)
        respond_to do |format|
            if @todo.save
                format.html { redirect_to todos_url, notice: 'Todo was successfully created.' }
                format.json { render :index, status: :created, location: @todo }
            else
                format.html { render :new }
                format.json { render json: @todo.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @todo.update(todo_params)
                format.html { redirect_to todos_url, notice: 'Todo was successfully updated.' }
                format.json { render :index, status: :created, location: @todo }
            else
                format.html { render :edit }
                format.json { render json: @todo.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @todo.destroy
        respond_to do |format|
            format.html { redirect_to todos_url, notice: 'Todo was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    def set_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:title, :body, :status, :user_id)
    end
end
