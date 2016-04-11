class ClientsController < ApplicationController
	#layout :write_or_read
	def write_or_read
		"write"
	end
	def new
		@client = Client.new
	end
	def show
		@client = Client.find(params[:id])
		@orders = @client.orders.all
		#render inline: "<% @orders.each do |p| %><p><%= p.name %></p><% end %>"
	end
	def destroy
		if Client.delete(params[:id])
			redirect_to :clients
		end
	end
	
	def index
		@clients = Client.all.page(params[:page]).per(4)
	end
	def edit
    	@client = Client.find(params[:id])
    	@orders = @client.orders.all
  	end
	def update
  		@client = Client.find(params[:id])
  		if @client.update(client_params)
    		redirect_to :clients
  		else
    		render "edit"
    	end
  	end

  	def client_params
      params.require(:client).permit(:first_name,:email,:birthday,:avatar)
    end
  	def create
	    @client = Client.new(client_params)
	    if @client.save
	      redirect_to :clients
	    else
	      # This line overrides the default rendering behavior, which
	      # would have been to render the "create" view.
	      render "new"
    	end
    end
end
