class CreateContactMeMessages < ActiveRecord::Migration
  def change
    create_table :contact_me_messages do |t|
      t.string :email
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
