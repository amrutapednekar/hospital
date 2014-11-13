class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def send_contact_email
    respond_to do |format|
      flag = ContactMailer.contact_email(params).deliver
      if flag
        format.html {
          flash[:notice] =  'Your message sent successfully.'
          redirect_to(home_contact_path) }
      else
        format.html {
          flash[:notice] = 'Error occured while sening your email. Please try again.'
          redirect_to(home_contact_path)}
      end
    end
  end
  
  def faculty
  end

  def awards
  end
  def locate
  end
end
