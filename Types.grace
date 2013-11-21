// Example of a type
type Vect = {
    x -> Number
    y -> Number
    z -> Number

    printVec -> Done
    get -> Number
}

// Example of instantiating a variable of the type
var v : vect = object {

    def x : Number is public = 1
    def y : Number is public = 2
    def z : Number is public = 3

}


// Example of a class that [implements?] the type
class Vector.new(x', y', z') -> Vect {
    def x is readable = x'
    def y is readable = y'
    def z is readable = z'

    method printVec -> Done {
        print("x: " ++ x ++ ", y: " ++ y ++ ", z: " ++ z)
    }

    method get(v) -> Number {

        match(v)
            case {"x" -> return x}
            case {"y" -> return y}
            case {"z" -> return z}
            case { _ -> return 0}
    }
}

// Example of instantiating a variable of the class
def vec = Vector.new(1, 2, 3)

vec.printVec
print(vec.get("y"))
print(vec.x)