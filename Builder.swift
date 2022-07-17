import Foundation

struct Laptop {
    let name: String
    let processor: Processor
    
    let rating: Rating
}

extension Laptop {
	var description: String {
		return "\(name) is a \(rating.displayName) Laptop Packed with a \(processor) Processor"
	}
}

enum Processor {
    case Intel
    case M1
    case AMD
}

enum Rating {
	case mustBuy
	case mediocre
   	case awful
}

extension Rating {
	var displayName: String {
		switch self {
		case .mustBuy: return "Must Buy"
		case .mediocre: return "Mediocre"
		case .awful: return "Awful"
		}
	}
}

class LaptopBuilder {
    private var name: String? = "Laptop"
    private var processor: Processor? = .Intel
    private var rating: Rating? = .mediocre
    
    @discardableResult
    func setName(to newName: String) -> Self {
    	self.name = newName
    	return self
    }
    
    @discardableResult
    func setProcessor(to newProcessor: Processor) -> Self {
    	self.processor = newProcessor
    	return self
    }
    
    @discardableResult
    func setRating(to newRating: Rating) -> Self {
    	self.rating = newRating
    	return self
    }
	
	func build() -> Laptop {
		return Laptop(
			name: name ?? "Laptop",
			processor: processor ?? .Intel,
			rating: rating ?? .mediocre
		)
	}
}


// @main
struct Main {

    static func main() {
        let laptop = LaptopBuilder()
        	.setName(to: "Macbook Air")
        	.setProcessor(to: .M1)
        	.setRating(to: .mustBuy)
        	.build()
        
        print(laptop.description)
    }
}

Main.main()
