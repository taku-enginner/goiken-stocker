class CreateIvents < ActiveRecord::Migration[7.2]
  def change
    create_table :ivents do |t|
      t.string :name

      t.timestamps
    end
  end
end
