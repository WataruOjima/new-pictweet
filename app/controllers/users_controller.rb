class UsersController < ApplicationController
  def show
    user = user.find(params[:id])
    @nickname = current_user.nickname
    @tweets = current_user.tweets
  end 
end
