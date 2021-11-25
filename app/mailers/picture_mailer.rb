class PictureMailer < ApplicationMailer
  default from: 'fujiawa.yuki@outlook.com'
  def picture_mail(picture)
    @picture = picture
    mail to: "fujiawa.yuki@outlook.com", subject: "投稿完了メール"
  end
end