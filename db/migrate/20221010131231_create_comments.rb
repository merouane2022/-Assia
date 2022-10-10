class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :comment_text
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
