class CustomFormBuilder < ActionView::Helpers::CustomFormBuilder
	#def form_error
	#	if  self.object.errors.any?
	#		model_name = self.object.class.model_name.human
	#		plural_name = self.object.class.model_name.plural_name
	#		is_new = self.object.persisted? ? 'edit' : 'new'

	#		@template.content_tag :div, class: 'alert alert-danger' do

	#			@template.content_tag :
				
	#		end
	#	end
	#end
	def input_error{}
		if self.object.errors[atribute].any?
			@template.content_tag :span, self.object.errors[atribute].first, class: 'badge badge-pill badge-danger'
		end
	end
end