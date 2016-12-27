require "sinatra"

# routes
get "/" do
  @name = "Kevin"
  erb :welcome
end

get "/kevin" do
  "Yo Kev, what's goody?"
end

# get content of .txt in pages directory and convert to string
def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

# run method and pass filename
puts page_content("Kevin_Fitzhenry")
