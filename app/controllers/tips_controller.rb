class TipsController < ApplicationController

  def index
  end

  def new
    @tip = Tip.new
  end
end
