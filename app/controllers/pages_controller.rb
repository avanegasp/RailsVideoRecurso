class PagesController < ApplicationController
  def hola
    # render txt: "Hola Mundo!"
    @user = User.find(params[:id])
  end
end
