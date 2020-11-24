class CreateLogEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :log_entries do |t|
      t.text :content
      t.references :loggable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
