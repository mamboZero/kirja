class CreateFollowups < ActiveRecord::Migration[6.0]
  def change
    create_table :followups do |t|
      t.string :status
      t.string :project_name
      t.string :contact_name
      t.string :email
      t.string :phone
      t.date :contact_date
      t.date :followup_date
      t.text :notes

      t.timestamps
    end
  end
end
