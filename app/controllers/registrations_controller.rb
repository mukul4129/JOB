class RegistrationsController < ApplicationController

    class RegistrationsController < ApplicationController

        before_action :require_signin
        before_action :set_naukri
      
        def index
          @registrations = @naukri.registrations
        end
      
        def new
          @registration = @naukri.registrations.new
        end
      
        def create
          @registration = @naukri.registrations.new(registration_params)
          @registration.user = current_user
          
          if @registration.save
            
            redirect_to naukri_registrations_url(@naukri),
              notice: "Thanks for registering!"
          else
            render :new
          end
        end
      
      private
      
        def registration_params
          params.require(:registration).permit(:how_heard)
        end
      
        def set_naukri
          @naukri = Naukri.find(params[:event_id])
        end
      
      end
end
