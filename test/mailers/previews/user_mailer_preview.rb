# Preview all emails at 
# http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at 
  # http://localhost:3000/rails/mailers/user_mailer/contact_form
  def contact_form
    UserMailer.contact_form("Jack", "js@example.com", "Hello world!" )
  end

   # Preview this email at 
  # http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
    usertest = User.create(:email => "js@example.com")
    UserMailer.welcome(usertest)
  end

end