class Foo < ApplicationRecord
  has_many :bars, dependent: :destroy
  validates :name, presence: true, length: { minimum: 2 }
end
