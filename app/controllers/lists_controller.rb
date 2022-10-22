class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタント変数に空のModuleオブジェクトを生成する。
    @list = List.new
  end

  # 以下追加
  def create
      #データを受け取り新規登録するためのインスタンスを作成
      list = List.new(list_params)
      # データをデータベースに保存するためのsaveメソッド実行
      list.save
      # フラッシュメッセージを定義し、詳細画面へリダイレクト
      flash[:notice] = "投稿が成功しました"
       # トップ画面へリダイレクト
      redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id]) #findメソッドは、allメソッドと違い１件だけ取得
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id]) # データ（レコード）を1件取得
    list.destroy # データ(レコード)を削除
    redirect_to '/lists' #投稿一覧画面へリダイレクト
  end

  private
  # ストロングパラメータ
  # list_params は保存したいデータの絞り込みを行う。
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end