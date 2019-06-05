class UsersController < ApplicationController

  @@clients=Array.new

  def index
    @clients = @@clients
  end

  def show
    index = Integer(params[:id])
    @client = @@clients[index]
  end

  def update
    new_client = Hash.new
    new_client[:Name] = params[:Name]
    new_client[:Surname] = params[:Surname]
    new_client[:Email] = params[:Email]
    new_client[:Smail] = params[:Smail]

    @@clients.append(new_client)
    p new_client
    redirect_to users_url
  end

end


