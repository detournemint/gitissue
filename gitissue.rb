require 'addressable/uri'
require 'json'
require 'nokogiri'
require 'rest-client'


def post_issue
  url = Addressable::URI.new(
    scheme: "https",
    host: "api.github.com",
    path: "/repos/greggawatt/drbronnersbot/issues").to_s
    puts url
    puts RestClient.post(url, { params: {:client_id => "",
      :client_secret => "", :title => "test",
      :body => "test"}})
end

post_issue