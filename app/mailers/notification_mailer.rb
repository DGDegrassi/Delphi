class NotificationMailer < ActionMailer::Base
  default from: "no-reply@delphiapp.com"

  def comment_added
    mail(to: "ddegrassi17@gmail.com",
      subject: "A comment has been added to your place")
  end
end
