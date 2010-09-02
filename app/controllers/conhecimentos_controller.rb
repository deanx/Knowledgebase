class ConhecimentosController < InheritedResources::Base
	actions :all, :except => ["destroy"]

	def destroy

		@conhecimento = Conhecimento.find(params[:id])
		@conhecimento.destroy
		@conhecimentos = Conhecimento.find(:all, :select => "id, titulo, autor_id")

		respond_to do |format|
	    		format.js {render :layout=>false}
		end

	end
end
