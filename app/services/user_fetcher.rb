class UserFetcher
  def self.fetch_all
    User.all
  end

  def self.fetch_by_id(id)
    User.find_by(id: id)
  end

  def self.create_user(nickname:, phone_number:, email:, registration_number:)
    User.create!(nickname: nickname, phone_number: phone_number, email: email, registration_number: registration_number)
  end

  def self.delete_user(id)
    user = User.find_by(id: id)
    return false unless user

    user.destroy
    true
  end
end
