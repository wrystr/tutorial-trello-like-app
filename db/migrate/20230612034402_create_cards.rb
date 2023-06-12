class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :project, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.jsonb :json_attributes

      t.timestamps
    end
  end
end
