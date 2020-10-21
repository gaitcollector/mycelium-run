class CreateSubstrateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :substrate_runs do |t|
      t.string :strain
      t.text :description
      t.boolean :inoculated
      t.datetime :inoculated_at
      t.boolean :run_started
      t.datetime :run_started_at
      t.boolean :fully_colonised
      t.datetime :fully_colonised_at
      t.boolean :primodia_formed
      t.datetime :primodia_formed_at
      t.text :logbook
      t.text :recipe
      t.references :mycelium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
