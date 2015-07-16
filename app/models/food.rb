class Food < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :serving
  validates_presence_of :calories
  belongs_to(:user)

  def self.column_names
    ["name", "serving", "calories"]
  end

  # def self.days
  #   days = []
  #   Food.all.each do |food|
  #     days.push(food.date)
  #   end
  # end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search.strip}%")
    else
      where(nil)
    end
  end
end
