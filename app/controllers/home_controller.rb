class HomeController < ApplicationController
  def index
  end


  def set_colour
  	
 	@colour=params[:rgb][:colour]

	m = @colour.match /#(..)(..)(..)/

	@r = "#{m[1].hex}"
	@g = "#{m[2].hex}"
	@b = "#{m[3].hex}"

	green(@g.to_f/255)
	blue(@b.to_f/255)
	red(@r.to_f/255)


  end



private

def green(value)
  system "echo \"17=#{value.to_f/100}\" > /dev/pi-blaster" 	
end

def blue(value)
  system "echo \"18=#{value.to_f/100}\" > /dev/pi-blaster"
end

def red(value)
  system "echo \"23=#{value.to_f/100}\" > /dev/pi-blaster"
end




end
