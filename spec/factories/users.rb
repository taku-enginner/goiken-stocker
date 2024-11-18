FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.unique.email } # ここをハードコーディングしてしまうと、GithubActionsで重複エラーが起こってしまう。たぶんActions内でデータを複数作るテストをしている。
    password              {"00000000"}
  end
end
