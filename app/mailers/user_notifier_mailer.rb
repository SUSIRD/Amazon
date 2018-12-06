class UserNotifierMailer < ApplicationMailer
  default from: 'hello@amazon-clone.com'

  # send a subscribe email to the user
  def send_subscribe_email(subscriptor)
    @subscriptor = subscriptor
    @subject = "Thanks for subscribe for our amazing app"
    mail(to: @subscriptor.email, subject: @subject)
    # mail(to: , from: , subject:)
  end

  def new_post_notifying_user(email, title, id)
    @email = email
    @title = title
    @id = id
    #@url = "http://localhost:3000/posts/#{@id}"
    @url = "https://amazon-makeit.herokuapp.com/posts/#{@id}"
    mail(to: @email, subject: "#{@title} - New blog post on Amazon-Clone")
  end
end
