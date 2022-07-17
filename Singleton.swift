class Singleton{

	private static let instance = Singleton()

	private init(){}
	
	static func getInstance() -> Singleton{
		
		return instance
	}
	
	func test(){
	
		print("Singleton instance ready")
	}
}

var singleton = Singleton.getInstance()
singleton.test()
