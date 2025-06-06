class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :article, null: false, foreign_key: true
      t.string :author_name
      t.string :content

      t.timestamps
    end
  end
end
