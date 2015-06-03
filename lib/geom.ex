defmodule Geom do

	@doc """
	It return the area of a Geom.area/2.

	iex> Geom.area(3,4)
	12
	iex> Geom.area(7)
	7
	iex> Geom.area()
	1
	"""
	def area(w \\ 1, h \\ 1), do: w * h 

	@doc """
	It return the area of a Geom.area/3. If any number is less than 0 it should return 0.

	iex> Geom.area(:rectangle, 3, 4)
	12
	iex> Geom.area(:triangle, 3, 5)
	7.5
	iex> Geom.area(:ellipse, 2, 4)
	25.132741228718345
	iex> Geom.area(:ellipse, -2, 4)
	0
	"""
	def area(shape, w, h) when w >= 0 and h >= 0 do
		case shape do
			:rectangle -> w * h
			:triangle  -> w * h / 2.0
			:ellipse   -> :math.pi() * w * h
		end
	end 

	def area(_,_,_), do: 0

end
