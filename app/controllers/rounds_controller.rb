class RoundsController < ApplicationController
  before_action :require_signin
  before_action :require_admin, except: [:index, :show]
    def index
        @naukri = Naukri.find(params[:naukri_id])
        @rounds = @naukri.rounds
      end
      
      def new
        @naukri = Naukri.find(params[:naukri_id])
        @round = @naukri.rounds.new
      end

      def show
        @round = Round.find(params[:id])
      end

      def edit 
       # @naukri = Naukri.find(params[:naukri_id])
        @round = Round.find(params[:id])
      end

      def update
        @round = Round.find(params[:id])
        if @round.update(round_params)
          redirect_to @round, notice: "Updated Successfully"
        else
          render :edit
        end
      end

      def create
        @naukri = Naukri.find(params[:naukri_id])
        @round = @naukri.rounds.new(round_params)

        if @round.save
          redirect_to naukri_rounds_url(@naukri),
          notice: "Successfully created"
        else
          render :new
        end
      end

      def destroy
        @round = Round.find(params[:id])
        @round.destroy
        redirect_to naukris_path, alert: "Round Successfully Deleted"
      end

      private

      def round_params
        params.require(:round).permit(:name, :option_type, :total_marks)
      end
end
