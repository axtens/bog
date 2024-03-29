set o = WScript.CreateObject("BOG.Axtension.1")
o.new
'interestingly, the perl code ignores extra arguments. Area of annulus takes 3
'but I give it 4 with no ill effects.
wscript.echo o.annulus("area", 2.4, 5.5, 7.8)
wscript.echo o.circle("area", 2.4, 5.5, 7.8)
wscript.echo o.cone("volume", 2.4, 5.5, 7.8)
wscript.echo o.cube("volume", 2.4, 5.5, 7.8)
wscript.echo o.ellipse("area", 2.4, 5.5, 7.8)
wscript.echo o.ellipsoid("volume", 2.4, 5.5, 7.8)
wscript.echo o.equilateral_triangle("area", 2.4, 5.5, 7.8)
wscript.echo o.frustum_of_right_circular_cone("lateral_surface_area", 2.4, 5.5, 7.8)
wscript.echo o.parallelogram("area", 2.4, 5.5, 7.8)
wscript.echo o.rectangle("area", 2.4, 5.5, 7.8)
wscript.echo o.rhombus("area", 2.4, 5.5, 7.8)
wscript.echo o.right_circular_cone("volume", 2.4, 5.5, 7.8)
wscript.echo o.right_circular_cylinder("volume", 2.4, 5.5, 7.8)
wscript.echo o.sector_of_circle("area", 2.4, 5.5, 7.8)
wscript.echo o.sphere("volume", 2.4, 5.5, 7.8)
wscript.echo o.square("area", 2.4, 5.5, 7.8)
wscript.echo o.torus("volume", 2.4, 5.5, 7.8)
wscript.echo o.trapezoid("area", 2.4, 5.5, 7.8)
wscript.echo o.trapezoid("perimeter", 2.4, 5.5, 7.8, 9.01)
wscript.echo o.triangle("area", 2.4, 5.5, 7.8)
wscript.echo o.triangle("perimeter", 2.4, 5.5, 7.8)
wscript.echo o.cubed(1E6)
wscript.echo o.squared(1E-8)


on error resume next
wscript.echo o.annulus("perimeter", 2.4, 5.5)
if err.number <> 0 then
	wscript.echo "BOG says,",err.description
end if
