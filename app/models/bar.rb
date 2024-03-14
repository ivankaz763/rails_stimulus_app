class Bar < ApplicationRecord
  belongs_to :foo
  validates :name, presence: true,  length: { minimum: 2 }
end
