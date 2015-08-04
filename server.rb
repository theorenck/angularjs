require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

get '/' do
  redirect '/index.html'
end

get '/api/hello/:nome' do |name|
	name = params[:name] || 'world'
	status 200
	headers['Content-Type'] = 'application/json'             
  body JSON::generate({hello: "Hello #{name}!"})
end

get '/api/clintes/:id' do |id|
	status 200
	headers['Content-Type'] = 'application/json'             
  body JSON::generate( find_cliente(id.to_i))
end

get '/api/clientes' do
	status 200
	headers['Content-Type'] = 'application/json'             
  body JSON::generate(clientes)
end

def find_cliente(id)
	clientes[id-1]
end

def clientes
	[
		{
			id: 1,
			nome: 'Rui',
			email: 'rgs@zeta.com.br'
		},
		{
			id: 2,
			nome: 'Theo',
			email: 'carlos.renck@zeta.com.br'
		},
		{
			id: 3,
			nome: 'Jaime',
			email: 'zechin@zeta.com.br'
		}
	]
end
