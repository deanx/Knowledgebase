class Conhecimento < ActiveRecord::Base
	belongs_to :autor
	belongs_to :categoria
end
