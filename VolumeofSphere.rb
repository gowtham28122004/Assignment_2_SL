proc sphereVolume {radius} {
    set volume [expr {(4.0 / 3.0) * 3.14159 * pow($radius, 3)}]
    return $volume
}

puts "Enter the radius of the sphere: "
gets stdin radius
set volume [sphereVolume $radius]
puts "The volume of the sphere is: $volume"
