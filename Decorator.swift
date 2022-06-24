class Decorator: Component {
    var component: Component
    init(component: Component) {
        self.component = component
    }
    func operation() {
        component.operation()
    }
}

class ConcreteDecoratorA: Decorator {
    override func operation() {
        super.operation()
        addedBehavior()
        component.operation()
    }
    func addedBehavior() {
        print("ConcreteDecoratorA")
    }
}

class ConcreteDecoratorB: Decorator {
    override func operation() {
        super.operation()
        addedBehavior()
        component.operation()
    }
    func addedBehavior() {
        print("ConcreteDecoratorB")
    }
}

class ConcreteComponent: Component {
    func operation() {
        print("ConcreteComponent")
    }
}

class Client {
    var component: Component
    init(component: Component) {
        self.component = component
    }
    func test() {
        component.operation()
    }
}

let client = Client(component: ConcreteComponent())

let concreteDecoratorA = ConcreteDecoratorA(component: client.component)
let concreteDecoratorB = ConcreteDecoratorB(component: concreteDecoratorA)

client.test()

concreteDecoratorA.operation()
concreteDecoratorB.operation()
