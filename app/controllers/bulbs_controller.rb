class BulbsController < ApplicationController
  before_action :set_bulb

  def index
    session[:name] = User.get_name if session[:name].blank?
    @logs = Log.last(10).reverse
  end

  def change
    @bulb.update( status: !@bulb.status )

    @log = Log.new( action: @bulb.status, user: session[:name] )
    @log.save

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
