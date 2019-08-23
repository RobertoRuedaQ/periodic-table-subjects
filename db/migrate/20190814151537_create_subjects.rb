class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :short
      t.integer :credits
      t.string :schedule
      t.string :campus
      t.string :category
      t.string :faculty
      t.string :code
      t.string :teacher
      t.text :description

      t.timestamps
    end
  end
end
