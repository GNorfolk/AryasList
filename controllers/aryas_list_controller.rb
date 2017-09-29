class AryasListController < Sinatra::Base
	# This gives ALC all powers of sinatra server

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new { File.join(root, 'views')}

	$list = [{
			name: "Ser Amory Lorch",
			desc: "For killing Yoren."
		},
		{
			name: "Queen Cersei Lannister",
			desc: "For her father, for Lady, and for everyone in the Stark household who were killed."
		},
		{
			name: "Chiswick",
			desc: "For capturing them, for thinking that Polliver taking her needle was funny."
		},
		{
			name: "Dunsen",
			desc: "For capturing them, for taking Gendry's bull's horn helmet."
		},
		{
			name: "Ser Gregor Clegane",
			desc: "For capturing them, for being the main reason they were tortured."
		},
		{
			name: "Ser Ilyn Payne",
			desc: "For chopping off her father's head."
		},
		{
			name: "King Joffery Baratheon",
			desc: "For her father, for Lady, and for everyone in the Stark household who were killed."
		},
		{
			name: "Ser Meryn Trant",
			desc: "For killing Syrio Forel."
		},
		{
			name: "Polliver",
			desc: "For capturing them, for taking Needle from her."
		},
		{
			name: "Raff the sweetling",
			desc: "For capturing them, for killing Lommy Greenhands."
		},
		{
			name: "Sandor Clegane",
			desc: "For Mycah, and later on for the way he treats her in the Riverlands, for not going to rescue her brother or her mother at the twins."
		},
		{
			name: "The Tickler",
			desc: "For the torture of all the captives."
		},
		{
			name: "Weese",
			desc: "For mistreating her in Harrenhal."
		},

	]

	# Index
	get '/aryaslist' do
		@index = "Index"
		@list = $list
		erb :"aryas_list/index"
	end

	# New
	get '/aryaslist/new' do
		@new = 'New'
		erb :"aryas_list/new"
	end

	# Create
	post '/aryaslist/' do

	end

	# Show
	get '/aryaslist/:id' do
		@show = "Show"
		erb :"aryas_list/show"
	end



end