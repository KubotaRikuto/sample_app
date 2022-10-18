Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/top' => 'homes#top'
  resources :lists #listsコントローラに紐づく以下のルーティングを自動生成
    # new(投稿を作成する画面)
    # show(投稿の詳細画面)
    # index(投稿の一覧画面)
    # edit(投稿の編集画面)
    # create(投稿作成)
    # destroy(投稿削除)
    # update(投稿更新)

end
