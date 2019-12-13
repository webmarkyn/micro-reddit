# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4, maximum: 15 }
  validates :email, presence: true, length: { minimum: 6 }

  has_many :posts
  has_many :comments
end
