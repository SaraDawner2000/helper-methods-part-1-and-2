# == Schema Information
#
# Table name: actors
#
#  id         :bigint           not null, primary key
#  bio        :text             default("not available")
#  dob        :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  validates :name, :dob, presence: true
  has_many :roles
  has_many :movies, through: :characters, source: :movie
end
