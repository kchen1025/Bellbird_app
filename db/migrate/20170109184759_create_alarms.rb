class CreateAlarms < ActiveRecord::Migration[5.0]
  def change
    create_table :alarms do |t|
      t.string :content
      t.integer :upvotes, :default => 0

      t.timestamps
    end
  end
end
