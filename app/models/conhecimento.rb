class Conhecimento < ActiveRecord::Base
	belongs_to :autor
	belongs_to :categoria

	cattr_reader :per_page
	@@per_page = 10
end
