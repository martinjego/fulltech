class HomeController < ApplicationController
  layout 'home'

  def contact_email
    if ContactMailer.email(params).deliver
      redirect_back fallback_location: root_path, notice: "Success"  
    else
      redirect_back fallback_location: root_path, error: "Error"  
    end
  end
end
