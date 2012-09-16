PI = 3

class Circle
  constructor: (@radius) ->
  area: ->
    PI * @radius * @radius

class Rectangle
  constructor: (@height, @length) ->
  area: ->
    @height * @length

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

