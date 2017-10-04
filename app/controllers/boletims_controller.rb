class BoletimsController < ApplicationController
  def index
	@boletims = Boletim.all
  end
end

