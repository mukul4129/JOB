class NaukrisController < ApplicationController

    def index
        @naukris = Naukri.all
      end

      def show 
        @naukri = Naukri.find(params[:id])
      end

      def edit
        @naukri = Naukri.find(params[:id])
      end

      def update
        @naukri = Naukri.find(params[:id])
        @naukri.update(naukri_params)
        redirect_to @naukri
      end

      def new
        @naukri = Naukri.new
      end

      def create
        @naukri = Naukri.new(naukri_params)
        @naukri.save
        redirect_to @naukri
      end

      def destroy
        @naukri = Naukri.find(params[:id])
        @naukri.destroy
        redirect_to naukris_path
      end

      private

      def naukri_params
        params.require(:naukri).
          permit(:name)
      end
end

