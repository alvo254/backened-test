class CreateTms < ActiveRecord::Migration[7.0]
  def change
    create_table :tms do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :course

      t.timestamps
    end
  end
end
