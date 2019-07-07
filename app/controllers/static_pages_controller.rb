class StaticPagesController < ApplicationController
  def home
  end

  def jquery
    @friend = Friend.new
    @friends = Friend.all
  end
end
