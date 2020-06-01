
//isSparse()
func isSparse() -> Bool {
    var n = 72
    if (n & (n << 1)) == 0 {
        return true
    } else{
      return false
    }
}
