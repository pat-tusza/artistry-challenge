class PlaysController < ApplicationController

    def new
    @plays = Play.new
    @artists = Artist.all
    @instruments = Instrument.all
    end

    def create
    @plays = Play.create(play_params)
    redirect_to artist_path(@plays.artist_id)
    end

    private

    def play_params
    params.require(:play).permit(:artist_id, :instrument_id)
    end

end
