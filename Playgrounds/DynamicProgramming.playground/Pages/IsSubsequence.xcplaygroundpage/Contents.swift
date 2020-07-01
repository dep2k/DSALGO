func isSubsequence(_ s: String, _ t: String) -> Bool {
    
    if (s.count == 0 && t.count > 0) { return true }
    
    if (s.count > 0 && t.count == 0) { return false }
    
    if s == t { return true }
    
    if s.first! == t.first! {
        if (s.count == t.count && s.count == 1) {
            return true
        }
        return isSubsequence(String(s.suffix(s.count - 1)), String(t.suffix(t.count - 1)))
    } else {
        return isSubsequence(s, String(t.suffix(t.count - 1)))
    }
}

let isSub = isSubsequence("abc", "abced")
