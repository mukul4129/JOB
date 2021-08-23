class NaukrisController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

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
        if @naukri.update(naukri_params)
          redirect_to @naukri, notice: "Updated Successfully"
        else
          render :edit
        end
      end

      def new
        @naukri = Naukri.new
      end

      def create
        @naukri = Naukri.new(naukri_params)
        if @naukri.save
          redirect_to @naukri, notice: "Successfully created!"
        else
          render :new
        end
      end

      def destroy
        @naukri = Naukri.find(params[:id])
        @naukri.destroy
        redirect_to naukris_path, alert: "Successfully deleted!"
      end

      private

      def naukri_params
        params.require(:naukri).
          permit(:name)
      end
end

