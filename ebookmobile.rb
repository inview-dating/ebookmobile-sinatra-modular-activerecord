require "sinatra/base"
require "sinatra/activerecord"

Dir["./models/**/*"].each {|file| require file }

class Ebookmobile < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get "/authors" do 
    Author.all.to_json
  end

  post "/authors" do 
    params = JSON.parse(request.body.read, symbolize_names: true).fetch(:author)

    @author = Author.create!(params)

    [ 200, @author.to_json ]
  end
end