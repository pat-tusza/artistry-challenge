class ArtistsController < ApplicationController

    def index
        @artists = Artist.all 
    end

    def show
        @artists = Artist.find(params[:id])
    end

    def new
        @artists = Artist.new
    end

    def create 
        
        @artists = Artist.create(artists_params)
        redirect_to artist_path(@artists)
    end
    
    private

    def artists_params
    params.require(:artist).permit(:name, :age, :title)
    end



end
