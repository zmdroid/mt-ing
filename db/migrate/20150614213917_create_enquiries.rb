class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.text :service_description
      t.string :phone
      t.string :entity
      t.integer :budget
      t.string :deadline

      t.timestamps null: false
    end
  end
end
