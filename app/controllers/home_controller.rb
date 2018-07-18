class HomeController < ApplicationController
  layout 'home'

  def index
  end

  def about_us
  end

  def contact_us
  end

  def contact_email
    if ContactMailer.email(params).deliver
      redirect_back fallback_location: root_path, notice: "Success"  
    else
      redirect_back fallback_location: root_path, error: "Error"  
    end
  end
end
