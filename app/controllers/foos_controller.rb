class FoosController < ApplicationController
  def index
    @foos = Foo.limit(params[:limitCount]).offset(2)
  end

  def show
    @foo = Foo.find(params[:id])
  end

  def new
    @foo = Foo.new
  end

  def create
    @foo = Foo.new(foo_params)

    if @foo.save
      redirect_to @foo
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @foo = Foo.find(params[:id])
  end

  def update
    @foo = Foo.find(params[:id])

    if @foo.update(foo_params)
      redirect_to @foo
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @foo = Foo.find(params[:id])
    @foo.destroy

    redirect_to foos_path, status: :see_other
  end

  private
    def foo_params
      params.require(:foo).permit(:name)
    end
end
