class InquiryMailer < ApplicationMailer
  def send_email(inquiry)
    @inquiry = inquiry
    mail(
      from: 'system@example.com',
      to:   'manager@example.com',
      subject: 'お問い合わせ通知'
    )

  end
end
