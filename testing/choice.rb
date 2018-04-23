colors = ["Blue ", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow "];


def color_choice(colors)
	colors.each_with_index do |color, index|
		puts " choice #{index + 1} is #{color}"
	end
end

color_choice(colors)