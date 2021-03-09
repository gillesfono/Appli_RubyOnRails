class CreatePersonnes < ActiveRecord::Migration[6.1]
  def change
    create_table :personnes do |t|
      t.string :nom
      t.string :prenom
      t.string :eamil
      t.string :portable

      t.timestamps
    end
  end
end
