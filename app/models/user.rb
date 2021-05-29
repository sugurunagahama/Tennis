class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20}
  validates :email, presence: true,format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/}
  validates :phone_number, presence: true,format: { with: /\A0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1})[-)]?\d{4}\z|\A0[5789]0[-]?\d{4}[-]?\d{4}\z/}
  validates :password,presence: true, length: { in: 8..32 },format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i},on: :create
  #バリデーション　空白不可　文字の長さ２０文字
  #バリデーション　空白不可　〜。＠〜。〜　の正規表現
  #バリデーション  空白不可　電話番高正規表現
  #バリデーション　空白不可　パスワード正規表現　英数混合
  has_secure_password
  #password機能実装
end