require "sinatra"

# routes
get "/" do
  @name = "Kevin"
  erb :welcome
end

get "/kevin" do
  "Yo Kev, what's goody?"
end

get "/:title" do
  @title = params[:title]
  @content = page_content(@title)
  @title.sub!("-"," ")
  erb :show
end

# get content of .txt in pages directory and convert to string
def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

# run method and pass filename
puts page_content("Kevin-Fitzhenry")
