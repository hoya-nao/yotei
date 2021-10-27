class WelcomesController < ApplicationController
  def start
    @welcomes = Welcomes.all
  end
  
      def new
        @welcomes = Welcomes.new
      end
   
      def create
        @welcomes = Welcomes.new(params.permit(:title, :hajime, :owari, :syuujitu, :memo))
      if @welcomes.save
        redirect_to :welcomes_start
      else
        render "new"
      end
      end
 
      def show
        @welcome = Welcomes.find(params[:id])
      end
 
      def edit
        @welcome = Welcomes.find(params[:id])
      end
 
      def update
      @welcome = Welcomes.find(params[:id])
      if @welcome.update(params.require(:welcomes).permit(:title, :hajime, :owari, :syuujitu, :memo))
        redirect_to :welcomes_start
      else
        render "edit"
      end
      end
 
      def destroy
      @welcome = Welcomes.find(params[:id])
      @welcome.destroy
      flash[:notice] = "スケジュールを削除しました"
      redirect_to :welcomes_start
      end

      def time
        @welcome = Welcomes.strftime('%Y年%m月%日')
      end
      
      def count
      @welcomes.find_by_id(rand(@welcomes.count) + 1)
      end
      
end