class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:login]
  before_action :require_login, except: [:login_form, :login]

  def index
  end

  def login_form
  end

  def login
    session[:name] = params[:name]
    redirect_to root_path
  end

  def logout
    session[:name] = nil
    redirect_to login_path
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

  private

  def require_login
    redirect_to login_path unless session[:name]
  end
end
