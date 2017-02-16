class ApplicationMailer < ActionMailer::Base
  default from:     "no-replyテスト",
          bcc:      "sample+sent@gmail.com",
          subject:  "ご登録メールアドレスの確認"
  layout 'mailer'
end
