# problem 6: rectangle overlap

# Write a method overlap which takes two rectangles defined by
# the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]],
# and determines whether they overlap. You can assume all coordinates are
# positive integers. 

# It doesn't count as overlapping if their edges touch but they do not
# otherwise overwrite each other.

def left_corner_inside?(rectangle, point)
  return ((point[0] >= rectangle[0][0]  and
         point[0] < rectangle[1][0]) and
        (point[1] >= rectangle[0][1]  and
         point[1] < rectangle[1][1]))
end

def right_corner_inside?(rectangle, point)
  return ((point[0] > rectangle[0][0]  and
         point[0] <= rectangle[1][0]) and
        (point[1] > rectangle[0][1]  and
         point[1] <= rectangle[1][1]))
end

def overlap(rectangle1, rectangle2)
  return ((left_corner_inside?(rectangle2, rectangle1[0]) or
         right_corner_inside?(rectangle2, rectangle1[1])) or
        (left_corner_inside?(rectangle1, rectangle2[0]) or
         right_corner_inside?(rectangle1, rectangle2[1])))
end

puts overlap([[0, 0], [3, 3]], [[1, 1], [4, 5]])
# => true
puts overlap([[0, 0], [1, 4]], [[1, 1], [3, 2]])
# => false