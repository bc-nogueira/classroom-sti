class Professor < ApplicationRecord
  # self.table_name = 'professor'
  has_many :turmas
end
