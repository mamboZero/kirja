class AddFollowupIdToComments < ActiveRecord::Migration[6.0]
  def change
  	add_column :comments, :followup_id, :integer
  end
end
