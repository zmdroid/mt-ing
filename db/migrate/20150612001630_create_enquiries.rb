class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :enquirer_name
      t.string :email
      t.text :description
      t.string :phone_number
      t.boolean :is_private_person?
      t.boolean :is_company?
      t.integer :budget
      t.integer :deadline

      t.timestamps null: false
    end
  end
end
