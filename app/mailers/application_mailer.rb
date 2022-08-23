class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.use_key
  layout "mailer"
end
