require "sinatra"

get("/") do
  @time = Time.now.strftime("%m/%d/%Y %H:%M")
  "<h1>The current date and time is: " + @time + "</h1>"
end
