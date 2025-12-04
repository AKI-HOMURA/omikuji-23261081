#class HomeController < ApplicationController
class ApplicationController < ActionController::Base
def index
  end

  def result
    results = ["大吉", "中吉", "小吉", "凶"]
    @result = results.sample
  end

  def about
  end
end
