class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # devise(:database_authenticatable, :registerable, :recoverable, :rememberable, :validatable) と同じ。メソッドの省略形。

  # 分かりやすい表記
  # devise :database_authenticatable,  # （データベースを使って認証を行う）
  # :registerable,              # （ユーザーの登録、アカウント編集、削除を行う）
  # :recoverable,               # （パスワードリセット機能を提供）
  # :rememberable,              # （ログイン状態を記憶する機能を提供）
  # :validatable                # （メールアドレスの形式やパスワードの長さなどを検証する）

  # gem をbundle installでアプリケーションにインストールしているから、アプリケーション内でdeviseメソッドが呼び出せるようになる。

  has_many :ivents
end
