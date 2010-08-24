class Autor < ActiveRecord::Base
  has_many :Conhecimentos
end
