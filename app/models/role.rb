# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  character  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Role < ApplicationRecord
end
