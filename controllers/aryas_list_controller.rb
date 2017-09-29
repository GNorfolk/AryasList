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

end