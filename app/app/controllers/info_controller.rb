class InfoController < ApplicationController
  $hitcount = 0
  def index
  end

  def json
    require 'socket'
    $hitcount += 1
    render json: {
                  "Hostname" => "#{Socket.gethostname}",
                  "Local Address" => "#{request.host}",
                  "Remote Address" => "#{request.remote_ip}",
                  "Hit Count" => "#{$hitcount}"
                 }
  end
end
