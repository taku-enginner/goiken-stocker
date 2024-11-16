require 'rails_helper'

RSpec.describe "Ivents", type: :system do
  include LoginMacros
  before do
    driven_by(:rack_test)
  end

  it "ログインした後に、イベントを作成する" do
    user = create(:user)
    login(user)

    #　ログイン後、イベント一覧ページに遷移している
    expect(page).to have_content("イベント一覧")
    expect(page).to have_current_path(ivents_path)

    # イベント作成ボタンを押し、イベント作成ページに遷移する
    click_on "イベント作成ページはこちら"
    expect(page).to have_content("イベント作成")
    expect(page).to have_current_path(new_ivent_path)

    # イベントを入力し、イベントを登録する
    fill_in "ivent_name", with: "サンプルイベント2"
    click_on "イベントを登録する"
    expect(page).to have_content("イベント一覧")
    expect(page).to have_current_path(ivents_path)
    expect(page).to have_content("サンプルイベント2")

  end
  pending "add some scenarios (or delete) #{__FILE__}"
end
