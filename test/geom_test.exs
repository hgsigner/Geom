defmodule GeomTest do
  use ExUnit.Case

  doctest Geom

  test "area/2 has to retrieve the correct area" do
    assert Geom.area(3,4) == 12
    assert Geom.area(7) == 7
    assert Geom.area() == 1
  end

  test "area/3 has to retrieve the correct area" do
    assert Geom.area(:rectangle, 3,4) == 12
    assert Geom.area(:triangle, 3,5) == 7.5
    assert Geom.area(:ellipse, 2,4) == 25.132741228718345
  end

  # test "area/3 can't to retrieve the correct area for negative numbers" do

  # 	assert_raise FunctionClauseError, "no function clause matching in Geom.area/3", fn ->
  # 		Geom.area(:rectangle, -3, 4)
  # 	end

  # 	assert_raise FunctionClauseError, "no function clause matching in Geom.area/3", fn ->
  # 		Geom.area(:triangle, 3, -5)
  # 	end

  # 	assert_raise FunctionClauseError, "no function clause matching in Geom.area/3", fn ->
  # 		Geom.area(:ellipse, -2, -4)
  # 	end
    
  # end

  test "area/3 retrieves 0 for negative numbers" do
  	assert Geom.area(:rectangle, -3,4) == 0
    assert Geom.area(:triangle, -3,5) == 0
    assert Geom.area(:ellipse, -2,-4) == 0
  end 

end
