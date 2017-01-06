class CreateBoxContents < ActiveRecord::Migration[5.0]
  def change
    create_table :box_contents do |t|
      t.references :box, foreign_key: true
      t.references :content, foreign_key: true

      t.timestamps
    end
  end
end
