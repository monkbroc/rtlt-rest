require 'sinatra/base'
require 'sinatra/json'
require 'json'
require './rtlt_soap'

class RtltRestApp < Sinatra::Base
  helpers Sinatra::JSON

  get '/' do
    File.read(File.join('public', 'index.html'))
  end

  get '/resources' do
    json RtltSoap.new.get_all(params)
  end

  get '/resources/headers' do
    json RtltSoap.new.get_headers(params)
  end

  get '/resources/:fema_id' do
    json RtltSoap.new.get(params)
  end

end

