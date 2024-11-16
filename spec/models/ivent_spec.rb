require 'rails_helper'

describe Ivent do
  describe "#create" do
    it "nameが無い場合は登録できないこと" do
      # iventインスタンスのnameをnilでbuildする
      ivent = build(:ivent, name: nil)

      # 作成したインスタンスがバリデーションによって保存ができない状態かチェックする
      ivent.valid?

      # エラー文が入った配列を取り出し、includeマッチャを利用してエクスペクテーションを作る
      expect(ivent.errors[:name]).to include("を入力してください")
    end

    it "nameが1文字未満の場合は登録ができないこと" do
      # iventインスタンスをivent2で生成
      ivent_with_a = build(:ivent, :with_name_a)
      # :with_name_aはオプションハッシュという。

      # 作成したインスタンスがバリデーションによって保存ができない状態かチェックする
      ivent_with_a.valid?

      # エラー文が入った配列を取り出し、includeマッチャを利用してエクスペクテーションを作る
      expect(ivent_with_a.errors[:name]).to include("は2文字以上で入力してください")
    end
  end
  

end
