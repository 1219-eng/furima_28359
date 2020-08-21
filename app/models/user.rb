class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
#  ニックネームが必須であること
         validates :nickname, presence: true
# メールアドレスが必須であること
# メールアドレスが一意性であること
          validates :email, presence: true,uniqueness: true
#  パスワードが必須であること
# パスワードは6文字以上であること
         validates :password, presence: true, length: { minimum: 6 }
# パスワードは半角英数字混合であること
# パスワードは確認用を含めて2回入力すること
         validates :password, confirmation: true
          validates :password, format: {with: /\A[a-zA-Z0-9]+\z/,}
# 本人情報
          validates :name, format: { with: /\A[ぁ-んー－]+\z/,message: "is invalid. Input full-width characters."}
          validates :name, format: { with: /\A[ァ-ヶー－]+\z/,message: "is invalid. Input full-width characters."}
          validates :name, format: { with: /\A[一-龥]+\z/,message: "is invalid. Input full-width characters."}
          validates :family_name,presence: true
          validates :family_name, format: { with: /\A[ぁ-んー－]+\z/,message: "is invalid. Input full-width characters."}
          validates :family_name, format: { with: /\A[ァ-ヶー－]+\z/,message: "is invalid. Input full-width characters."}
          validates :family_name, format: { with: /\A[一-龥]+\z/,message: "is invalid. Input full-width characters."}
          validates :phonetic_name,presence: true
          validates :phonetic_name, format: { with: /\A[ァ-ヶー－]+\z/,message: "is invalid. Input full-width characters."}
          validates :phonetic_family_name,presence: true
          validates :phonetic_family_name, format: { with: /\A[ァ-ヶー－]+\z/,message: "is invalid. Input full-width characters."}
          validates :birthday, presence: true
end
