class CreateSnowflakes < ActiveRecord::Migration[6.0]
  def change
    create_table :snowflakes do |t|
      t.string :shape

      t.timestamps
    end
  end
end
