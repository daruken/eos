# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, Types::UserType, null: false do
      argument :nickname, String, required: true
      argument :phone_number, String, required: true
      argument :email, String, required: true
    end

    field :delete_user, Boolean, null: false do
      argument :id, ID, required: true
    end

    def create_user(nickname:, phone_number:, email:, registration_number:)
      User.create!(nickname: nickname, phone_number: phone_number, email: email, registration_number: registration_number)
    end

    def delete_user(id:)
      user = User.find_by(id: id)
      return false unless user

      user.destroy
      true
    end
  end
end
