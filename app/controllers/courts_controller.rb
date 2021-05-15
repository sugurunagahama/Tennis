class CourtsController < ApplicationController
  def index
    @court = Court.all.page(params[:page]).per(5)
    #ページネーション作成.    #５件のレコード表示
    @q = Court.ransack(params[:q])
    @courts = @q.result(distinct: true).page(params[:page]).per(5)
    #検索機能
  end
  
  def show
    @court = Court.find_by(id: params[:id])
    #paramsでルーティングで指定したidを取得している。
    #find_byメソッドで（第一引数：指定したいカラム　第二引数：〇〇）を指定し、変数に代入。
  end
  
  def new
    @court = Court.new
  end

  def create
    @court = Court.new(court_params)

    if @court.save
     redirect_to courts_path, success: 'コート作成しました'
    else
     flash.now[:danger] = "失敗しました"
     render :new
    end
  end
  
  def edit
   @court = Court.find(params[:id])
  end
  
  def update
      @court = Court.find_by(id: params[:id])
      if @court.update_attributes(court_params)
        redirect_to courts_path
      else
        render action: :edit
      end
  end
  
  def destroy
    @court = Court.find(params[:id])
    @court.destroy
    redirect_to courts_path
    
  end

  private
  def court_params
    params.require(:court).permit(:image, :name, :type, :access, :opening_hour, :features, :area)
  end
  
end
