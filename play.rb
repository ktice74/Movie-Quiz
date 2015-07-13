require "net/http"
require "uri"
require "json"

# class Movie < ActiveRecord::Base
class Movie
  uri = URI.parse("http://www.omdbapi.com/?i=tt0116282")

  response = Net::HTTP.get_response(uri)
  a = Net::HTTP.get(uri)

  # fargo = JSON.parse(a)

  # puts fargo["Title"]
  # # puts a
  # p a["Title"]
  # p response
  # p print
  # p print["Director"]
end