class MonthDayYearToString < ActiveRecord::Migration[6.1]
  def change
    change_column :birthdays, :month, :string 
    change_column :birthdays, :day, :string
    change_column :birthdays, :year, :string
  end
end
