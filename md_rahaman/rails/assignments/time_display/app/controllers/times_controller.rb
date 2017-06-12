class TimesController < ApplicationController
  def main
  	p "Current Time: #{Time.now}"
  	@time = Time.new
  end

end
