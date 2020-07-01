//: [Previous](@previous)

import Foundation

func test1() {
  
  print("A")
  
  DispatchQueue.main.async {
    print("B")
    
    DispatchQueue.main.sync {
      print("C")
    }
    
    print("D")
  }
  
  print("E")
}



func test2() {

  DispatchQueue.main.async {
    print("B")
    
    DispatchQueue.main.sync {
      print("C")
    }
    
    print("D")
  }
}

func test3() {
    print("A")

    DispatchQueue.main.async {
        print("B")

        DispatchQueue.main.async {
            print("C")
        
            DispatchQueue.main.async {
                print("D")
            
                DispatchQueue.main.sync {
                    print("E")
                }
            }
        }

        DispatchQueue.global().sync {
            print("F")
        
            DispatchQueue.main.sync {
                print("G")
            }
        }

        print("H")
    }

    print("I")
}

test3()
