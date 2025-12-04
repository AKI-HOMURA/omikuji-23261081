class KekkasController < ApplicationController

  def new
    @kekka = Kekka.new(
    result: params[:result],
    message: params[:message],
    number: params[:number]
  )
  end

  def create
    @kekka = Kekka.new(kekka_params)
    if @kekka.save
      redirect_to @kekka, notice: "登録できたよ！"
    else
      render :new
    end
  end

  def show
    @kekka = Kekka.find(params[:id])
  end

  private

  def kekka_params
    params.require(:kekka).permit(:result, :message, :number)
  end
end
