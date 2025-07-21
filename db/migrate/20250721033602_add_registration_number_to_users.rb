class AddRegistrationNumberToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :registration_number, :string
  end
end
