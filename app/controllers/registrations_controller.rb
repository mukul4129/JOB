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
    @registration = @naukri.registrations.new(params[:id])
    @registration.user = current_user

    if @registration.save
      redirect_to naukri_registrations_url(@naukri),
        notice: "Thanks for registering!"
    else
      render :new
    end
  end

private

  def set_naukri
    @naukri = Naukri.find(params[:naukri_id])
  end

end

