require 'sinatra'
require 'make_todo'

get '/' do
    @tasks = Tarea.all
    erb :index
end    

post '/new' do
    Tarea.create(params[:task])
    redirect '/'
end    

patch '/update/:id' do
    Tarea.update(params[:id])
    redirect '/'
end    

delete '/delete/:id' do
    Tarea.destroy(params[:id])
    redirect '/'
end    