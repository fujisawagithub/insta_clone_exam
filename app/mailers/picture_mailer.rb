class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "test@gmail.com", subject: "投稿完了メール"
  end
end