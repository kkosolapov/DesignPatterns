protocol AbstractFactory {
    func createProductA() -> AbstractProductA
    func createProductB() -> AbstractProductB
}

class ConcreteFactory1: AbstractFactory {
    func createProductA() -> AbstractProductA {
        return ProductA1()
    }
    func createProductB() -> AbstractProductB {
        return ProductB1()
    }
}

class ConcreteFactory2: AbstractFactory {
    func createProductA() -> AbstractProductA {
        return ProductA2()
    }
    func createProductB() -> AbstractProductB {
        return ProductB2()
    }
}

protocol AbstractProductA {
    func use()
}

class ProductA1: AbstractProductA {
    func use() {
        print("ProductA1")
    }
}

class ProductA2: AbstractProductA {
    func use() {
        print("ProductA2")
    }
}
//create abstract product
protocol AbstractProductB {
    func use()
}
//create concrete product
class ProductB1: AbstractProductB {
    func use() {
        print("ProductB1")
    }
}
class ProductB2: AbstractProductB {
    func use() {
        print("ProductB2")
    }
}

class Client {
    func main() {
        let factory1 = ConcreteFactory1()
        let productA1 = factory1.createProductA()
        productA1.use()
        let productB1 = factory1.createProductB()
        productB1.use()
        let factory2 = ConcreteFactory2()
        let productA2 = factory2.createProductA()
        productA2.use()
        let productB2 = factory2.createProductB()
        productB2.use()
    }
}

let client = Client()
client.main()
