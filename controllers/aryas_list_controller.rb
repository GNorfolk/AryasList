class AryasListController < Sinatra::Base
	# This gives ALC all powers of sinatra server

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new { File.join(root, 'views')}

	$posts = [{
			title: "Person1",
			body: "This is the first person on Arya\'s list"
		},
		{
			title: "Person2",
			body: "This is the second person on Arya\'s list"
		},
		{
			title: "Person3",
			body: "This is the third person on Arya\'s list"
	}]

	# Index
	get '/aryaslist' do
		@index = "Index"
		erb :"aryas_list/index"
	end

	# New
	get '/aryaslist/new' do
		@new = 'New'
		erb :"aryas_list/new"
	end

	# Show
	get '/aryaslist/:id' do
		@show = "Show"
		erb :"aryas_list/show"
	end



end