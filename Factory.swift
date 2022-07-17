protocol Shape {
    var shape: String { get }
    
    func draw() -> Void
}

extension Shape {
    func draw() {
        print(self.shape)
    }
}

struct Circle: Shape {
    let shape: String = "🔴"
}

struct Square: Shape {
    let shape: String = "🟥"
}

struct Triangle: Shape {
    let shape: String = "🔺"
}

struct ShapeFactory {
    static func generate(_ shape: Shapes) -> Shape {
        switch shape {
        case .circle: return Circle()
        case .square: return Square()
        case .triangle: return Triangle()
        }
    }

    enum Shapes {
        case circle
        case square
        case triangle
    }
}

struct Main {
    static func main() -> Void {
        let circle = ShapeFactory.generate(.circle)

        let square = ShapeFactory.generate(.square)

        let triangle = ShapeFactory.generate(.triangle)


        circle.draw()
        square.draw()
        triangle.draw()
    }
}

Main.main()
