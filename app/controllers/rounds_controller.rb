class RoundsController < ApplicationController

    def index
        @naukri = Naukri.find(params[:naukri_id])
        @rounds = @naukri.rounds
      end
      
      def new
        @naukri = Naukri.find(params[:naukri_id])
        @round = @naukri.rounds.new
      end
end
