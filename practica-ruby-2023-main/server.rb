
require "nacho_st_gem"
require "sinatra"

p = People.new
v = Vehicles.new
s = Starships.new


get "/people/:id" do
  #puts p.data_base
  puts p.find_by_key_value("id", params[:id].to_i)
end

get "/vehicles/:id" do
  puts v.find_by_key_value("id", params[:id].to_i)
end

get "/starships/:id" do
  puts s.find_by_key_value("id", params[:id].to_i)
end

