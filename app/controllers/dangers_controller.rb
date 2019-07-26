class DangersController < ApplicationController
  require 'csv'

  # GET /dangers
  # GET /dangers.json
  def index
    @dangers = Danger.all
  end

  def upload
    csv_path = File.join Rails.root, 'db', 'dogs.csv'
    CSV.foreach((csv_path), headers: true) do |dog|
      Danger.create(
        first: dog[0],
        last: dog[1],
        description: dog[4])
    end
    flash[:notice] = "Dangerous dogs added"
    redirect_to dangers_path
  end
  def destroy_all
    Danger.destroy_all
    flash[:notice] = "Dangerous dogs removed"
    redirect_to dangers_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danger
      @danger = Danger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def danger_params
      params.require(:danger).permit(:first, :last, :description)
    end
end
