class UserMailerPreview < ActionMailer::Preview
  def inquiry

    inquiry = Inquiry.new(name: "高草木拓真", message: "問い合わせメッセージ")
    InquiryMailer.send_email(inquiry)
  end
end