module TweetsHelper
 def tweet_lists(tweets) #「tweet_listsメソッド」を定義して、引数として「tweets」を持たせる
   html = "" #空の箱として「html = ''」を生成
    tweets.each do |tweet| #tweetsに対してeachメソッドで繰り返し処理
     html += render(partial: "tweet",locals: { tweet: tweet }) #tweetに関する部分テンプレートを呼び出しています。呼び出した部分テンプレートを、先程生成したhtmlに代入
   end
   return raw(html) #raw()は、HTMLを正常に表示するためのメソッド, 具体的には、「<」「>」「&」などの、特殊文字と呼ばれる文字を意図するように扱うためのメソッド, 文字化けしてしまうケースがあり
  end 
end 
