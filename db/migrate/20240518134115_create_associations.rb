class CreateAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :associations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true
      t.string :person
      t.string :object
      t.string :action

      t.timestamps
    end
  end
end
