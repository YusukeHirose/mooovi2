  def post_review
    # 変数の定義
    puts "ジャンルを入力してください："
    post[:genre]  = gets.chomp
    puts "タイトルを入力してください："
    post[:title]  = gets.chomp
    puts "感想を入力してください："
    post[:review] = gets.chomp
    line   = "---------------------------"

    # レビューの描画
    puts "ジャンル : #{post[:genre]}\n#{line}"
    puts "タイトル : #{post[:title]}\n#{line}"
    puts "感想 :\n#{post[:review]}\n#{line}"
  end

  def read_reviews
    # レビューを読む
  end

  def end_program
    exit
  end

  def exception
    puts "入力された値は無効な値です"
  end

  while true do
    # メニューの表示
    puts "レビュー数：0"
    puts "[0]レビューを書く"
    puts "[1]レビューを読む"
    puts "[2]アプリを終了する"
    input = gets.to_i

    if input == 0 then
      post_review         # post_reviewメソッドの呼び出し
    elsif input == 1 then
      read_reviews        # read_reviewsメソッドの呼び出し
    elsif input == 2 then
      end_program         # end_programメソッドの呼び出し
    else
      exception           # exceptionメソッドの呼び出し
    end
  end
