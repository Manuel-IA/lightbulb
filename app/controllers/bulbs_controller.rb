class BulbsController < ApplicationController

  def index
    @bulb = Bulb.first
  end

  def change
  end
end
