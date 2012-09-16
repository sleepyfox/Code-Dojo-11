PI = 3
class Circle
  constructor: (@radius) ->
  area: ->
    PI * @radius * @radius

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
    class Rectangle
      area: ->
        0
    rectangle = new Rectangle
    expect(rectangle.area()).toBe 0