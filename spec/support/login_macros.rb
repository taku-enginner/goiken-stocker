module LoginMacros
  def login(user)
    visit new_user_session_path
    # fill_inは生成されたhtmlタグのidオプションを指定する
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_on "ログイン"
  end
end