RSpec.describe User, type: :model do
  describe 'ユーザー情報の記述' do
    it "nicknameが必要であること" do
      user = FactoryBot.build(:user)
      user.nickname = ""
      user.valid?
    end
    it "メールアドレスが必須であること" do
      user = FactoryBot.build(:user)
      user.email = ""
      user.valid?
    end
    it "メールアドレスが一意性であること" do
      user = FactoryBot.build(:user)
      user.email = "kkk@gmai.co"
      user.valid?
    end
    it "メールアドレスは@を含む必要があること" do
      user = FactoryBot.build(:user)
      user.email = "kkkgmail.com"
      user.valid?
    end
    it "パスワードが必須であること" do
      user = FactoryBot.build(:user)
      user.password = ""
      user.valid?
    end
    it "パスワードは6文字以上であること" do
      user = FactoryBot.build(:user)
      user.password = "000ab"
      user.valid?
    end
    it "パスワードは半角英数字混合であること" do
      user = FactoryBot.build(:user)
      user.password = "００００００"
      user.valid?
    end
    it "パスワードは確認用を含めて2回入力すること" do
      user = FactoryBot.build(:user)
      user.password = "password_confirmation"
      user.valid?
    end
  end

  describe '本人情報の記述' do
    it "ユーザー本人の名前が必須であること" do
      user = FactoryBot.build(:user)
      user.name = ""
      user.valid?
    end
    it "ユーザー本人の名字が必須であること" do
      user = FactoryBot.build(:user)
      user.family_name = ""
      user.valid?
    end
    it "ユーザー本名は全角で入力させること" do
      user = FactoryBot.build(:user)
      user.name = "yyyyyyy"
      user.valid?
    end
    it "ユーザー本名は全角で入力させること" do
      user = FactoryBot.build(:user)
      user.family_name = "yyyyyyy"
      user.valid?
    end
    it "ユーザー本名のフリガナは全角（カタカナ）で入力させること" do
      user = FactoryBot.build(:user)
      user.phonetic_family_name = "yyyyyyyy"
      user.valid?
    end
    it "ユーザー本名のフリガナは全角（カタカナ）で入力させること" do
      user = FactoryBot.build(:user)
      user.phonetic_name = "yyyyyyyy"
      user.valid?
    end
    it "" do
      user = FactoryBot.build(:user)
      user.birthday = ""
      user.valid?
  end
end