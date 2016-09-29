class InfoController < ApplicationController
  def index
    require 'socket'
    render html: " \
                   Hostname : #{Socket.gethostname} | \
                   Local Address : #{request.host}  | \
                   Local Port : #{request.port}  | \
                   Remote Address : #{request.remote_ip} "
  end
end
