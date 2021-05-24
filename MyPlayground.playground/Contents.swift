protocol flyable {
    func takeOff(speed: Int)
}

protocol armed {
    func attack(auto: Bool)
}

struct Human {
    var name = ""
    var age = 0
    var height = 0
    
    func shuoming() {
        print("姓名:\(name)年龄:\(age)身高:\(height)")
    }
}


var tony = Human(name: "nnn", age: 12, height: 180)
tony.shuoming()

print(tony.name)

extension Human: flyable, armed {
    func takeOff(speed: Int) {
        print("\(speed)")
    }
    
    func attack(auto: Bool) {
        print(auto);
    }
}

tony.takeOff(speed: 10)
tony.attack(auto: true)

