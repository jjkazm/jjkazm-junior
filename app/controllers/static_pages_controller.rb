class StaticPagesController < ApplicationController
  def home
  end

  def jquery
    @friend = Friend.new
    @friends = Friend.all
  end

  def query_optimizing; end

  def validators
    @patient = Patient.new
  end
end
