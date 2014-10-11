class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_email(user)
    @user = user
    mail(to: 'amruta.jadhav1@gmail.com', 
      from: @user[:email],
      subject: @user[:subject])
  end
end
