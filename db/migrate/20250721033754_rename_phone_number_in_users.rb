class RenamePhoneNumberInUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :phoneNumber, :phone_number
  end
end
