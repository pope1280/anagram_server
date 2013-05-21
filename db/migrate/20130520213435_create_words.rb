class CreateWords < ActiveRecord::Migration
  def change
    create_table  :words do |column|
      column.string  :word, :sorted_word
    end
  end
end
