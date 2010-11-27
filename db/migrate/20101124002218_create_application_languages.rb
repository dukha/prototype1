class CreateApplicationLanguages < ActiveRecord::Migration
  def self.up
    create_table :application_languages do |t|
      t.string :iso_code

      t.timestamps
    end
  end

  def self.down
    drop_table :application_languages
  end
end
