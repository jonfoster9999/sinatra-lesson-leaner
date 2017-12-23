class ArtistsController < ApplicationController 
    
    get '/artists' do
       @artists = Artist.find_each 
       erb :'artists/index'
    end

    get '/artists/new' do 
        erb :'artists/new'
    end

    post '/artists' do 
        @artist = Artist.create(params[:artist])
        if !params[:song][:name].blank?
            @song = Song.create(params[:song])
            @artist.songs << @song
        end
        @artist.save
        redirect "/artists/#{@artist.id}"
    end

    get '/artists/:id' do 
        @artist = Artist.find(params[:id])
        erb :'artists/show'
    end

    get '/artists/:id/edit' do 

    end
end