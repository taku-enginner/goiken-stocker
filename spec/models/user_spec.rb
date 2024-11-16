require 'rails_helper'

describe User do
  describe "#create" do
    it "emailが無い場合は登録できないこと" do
      # userインスタンスのemailをnilでbuildする
      user = build(:user, email: nil)

      # 作成したインスタンスがバリデーションによって保存ができない状態かチェックする
      user.valid?

      # エラー文が入った配列を取り出し、includeマッチャを利用してエクスペクテーションを作る
      expect(user.errors[:email]).to include("を入力してください")
    end
  end
  

end
