class Cocktail < ActiveRecord::Base

  has_attachment :photo

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, allow_blank: false, uniqueness: true

end
