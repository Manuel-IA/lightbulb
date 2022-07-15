class BulbsController < ApplicationController
  before_action :set_bulb

  def index
  end

  def change
    @bulb.update( status: !@bulb.status )
  end

  private
  
  def set_bulb
    @bulb = Bulb.first
  end
end
