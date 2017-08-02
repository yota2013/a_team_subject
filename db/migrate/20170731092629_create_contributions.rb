class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :name,:presence => true
      t.integer :ncomment,:default => 0
      t.integer :favo,:default => 0
      t.string :thread_link
      t.timestamps
    end
  end
end
