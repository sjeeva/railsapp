class InfoController < ApplicationController
  require 'socket'
  $hitcount = 0
  $hostname = Socket.gethostname
  $local_ip = Socket.gethostbyname($hostname)
  def index
  end

  def json
    $hitcount += 1
    render json: {
                  "Hostname" => "#{$hostname}",
                  "Local Address" => "#{$local_ip}",
                  "Remote Address" => "#{request.remote_ip}",
                  "Hit Count" => "#{$hitcount}"
                 }
  end
end
