FactoryGirl.define do
	factory :recipe do
		ignore do
			ingredient_count 5
		end
		
		process "Make the recipe"
		name "This is a recipe"
		
		after(:create) do |recipe, proxy|
			create_list(:ingredient, proxy.ingredient_count, :recipe => recipe)
		end
	end
end