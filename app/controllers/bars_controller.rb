class BarsController < ApplicationController
  before_action :set_foo

  def index
    @bars = @foo.bars
  end

  def new
    @bar = @foo.bars.build
  end

  def show
    @bar = @foo.bars.find(params[:id])
  end

  def create
    @bar = @foo.bars.create(bar_params)
    redirect_to foo_path(@foo)
  end

  def edit
    @bar = @foo.bars.find(params[:id])
  end

  def update
    @bar = @foo.bars.find(params[:id])

    if @bar.update(bar_params)
      redirect_to (@foo)
    else
      render :edit
    end
  end

  def destroy
    @bar = @foo.bars.find(params[:id])
    @bar.destroy
    redirect_to (@foo), status: :see_other
  end

  private

  def set_foo
    @foo = Foo.find(params[:foo_id])
  end

  def bar_params
    params.require(:bar).permit(:name)
  end
end
