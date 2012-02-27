module AspirantsHelper

def scientman_name_for(aspirant)
	if aspirant.scientman
		aspirant.scientman.person.full_name
		else
		"Не назначено"
	end
end	

end
