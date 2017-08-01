class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :contribution_id
      t.text :comment_data
      t.timestamps
    end
  end
end
