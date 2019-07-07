class FriendsController < ApplicationController
  def create
    @friend = Friend.new(friend_params)

    respond_to do |format|
      if @friend.save
        format.js
      end
    end
  end

  private
  def friend_params
    params.require(:friend).permit(:name)
  end
end
