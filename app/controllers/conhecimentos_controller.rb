class ConhecimentosController < InheritedResources::Base
	actions :all, :except => ["destroy", "create", "update"]

	def destroy

		@conhecimento = Conhecimento.find(params[:id])
		@conhecimento.destroy
		@conhecimentos = Conhecimento.find(:all, :select => "id, titulo, autor_id")

		respond_to do |format|
	    		format.js {render :layout=>false}
		end

	end

	def create
		@conhecimento = Conhecimento.new(params[:conhecimento])
		@conhecimento.save
		
		respond_to do |format|
			format.js {render :layout=>false}
		end
	end

	def update
		@conhecimento = Conhecimento.find(params[:id])
		@conhecimento.update_attributes(params[:conhecimento])

		respond_to do |format|
			format.js {render :layout=> false}
		end
	end
end
