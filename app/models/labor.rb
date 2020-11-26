class Labor < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :wtime
  

  validates :work_day, presence: true
end
