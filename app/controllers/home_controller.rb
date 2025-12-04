class HomeController < ApplicationController
  def index
  end

  def result
    results = ["大吉", "中吉", "小吉", "末吉", "凶"]
    messages = {
      "大吉" => "最高の１日になりそう！",
      "中吉" => "ちょっと良いことあるかも！",
      "小吉" => "まぁまぁいい感じ。",
      "末吉" => "ゆっくりいけばOK。",
      "凶"   => "今日は慎重にね…！"
    }

    @result = results.sample
    @message = messages[@result]
    @number = rand(1..100)
  end

  def about
  end
end
