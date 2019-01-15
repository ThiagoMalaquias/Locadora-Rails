class CreateClassis < ActiveRecord::Migration[5.2]
  def change
    create_table :classis do |t|
      t.string :nome

      t.timestamps
    end
  end
end
