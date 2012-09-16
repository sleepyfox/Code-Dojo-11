PI = 3

class Circle
  constructor: (@radius) ->
  area: ->
    PI * @radius * @radius

class Rectangle
  constructor: (@height, @length) ->
  area: ->
    @height * @length

class Triangle
  constructor: (@height, @width) ->
  area: ->
    @height * @width / 2

class Ellipse
  constructor: (@major, @minor) ->
  area: ->
    PI * @major * @minor

class Square
  constructor: (@length) ->
  area: ->
    @length * @length

describe 'shapes kata', ->
  it 'a circle of zero radius should have zero area', ->
    circle = new Circle 0
    expect(circle.area()).toBe 0

  it 'a circle of radius 1 should have PI area', ->
    circle = new Circle 1
    expect(circle.area()).toBe PI

  it 'a circle of radius 2 should have 4*PI area', ->
    circle = new Circle 2
    expect(circle.area()).toBe 4*PI

  it 'a rectangle with length zero and height zero should have zero area', ->
    rectangle = new Rectangle 0, 0
    expect(rectangle.area()).toBe 0

  it 'a rectangle with zero height and non-zero length should have zero area', ->
    rectangle = new Rectangle 0, 3
    expect(rectangle.area()).toBe 0

  it 'a rectangle with non-zero height and zero length should have zero area', ->
    rectangle = new Rectangle 2, 0
    expect(rectangle.area()).toBe 0

  it 'a rectangle with height 2 and length 3 should have area 6', ->
    rectangle = new Rectangle 2, 3 
    expect(rectangle.area()).toBe 6

  it 'a triangle with zero height and width should have zero area', ->
    triangle = new Triangle 0, 0
    expect(triangle.area()).toBe 0

  it 'a triangle with zero height and non-zero width should have zero area', ->
    triangle = new Triangle 0, 3
    expect(triangle.area()).toBe 0

  it 'a triangle with non-zero height and zero width should have zero area', ->
    triangle = new Triangle 4, 0
    expect(triangle.area()).toBe 0

  it 'a traingle with height 4 and width 3 should have area 6', ->
    triangle = new Triangle 4, 3
    expect(triangle.area()).toBe 6

  it 'an ellipse with a major axis and minor axis of zero should have zero area', ->
    ellipse = new Ellipse 0, 0
    expect(ellipse.area()).toBe 0

  it 'an ellipse with a zero major axis and a non-zero minor axis of zero should have zero area', ->
    ellipse = new Ellipse 0, 4
    expect(ellipse.area()).toBe 0

  it 'an ellipse with a non-zero major axis and a zero minor axis of zero should have zero area', ->
    ellipse = new Ellipse 3, 0
    expect(ellipse.area()).toBe 0

  it 'an ellipse with a major axis of 3 and a minor axis of 4 should have an area of 12*PI', ->
    ellipse = new Ellipse 3, 4
    expect(ellipse.area()).toBe 12*PI

  it 'a square with a side length of zero should have zero area', ->
    square = new Square 0
    expect(square.area()).toBe 0

  it 'a square with a side length of two should have area 4', ->
    square = new Square 2
    expect(square.area()).toBe 4
