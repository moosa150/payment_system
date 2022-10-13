class Plan < ApplicationRecord
    has_many :features
    validates :plan_name, presence: true,
                    length: { minimum: 5 }
end

