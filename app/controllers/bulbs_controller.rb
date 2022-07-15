class BulbsController < ApplicationController
  before_action :set_bulb

  def index
  end

  def change
    @bulb.update( status: !@bulb.status )

    respond_to do |format|
      format.html { redirect_to bulb_path, notice: "Quote was successfully updated." }
      format.turbo_stream { flash.now[:notice] = "Quote was successfully updated." }
    end
  end

  private
  
  def set_bulb
    @bulb = Bulb.first
  end
end
