//: [Previous](@previous)

import Foundation

 func validIPAddress(_ IP: String) -> String {
    var isValidIp4 = true
    var isValidIp6 = true
    var components = IP.components(separatedBy: ".")
    // check for IP4
    if components.count == 4 {
        for component in components {
            guard let intValue = Int(component) else {
                isValidIp4 = false
                break
            }
            
             if component.first! == "-" {
                isValidIp4 = false
                break
            }
            
            if component.count >= 2 && component.first! == "0" {
                isValidIp4 = false
                break
            }
            
            if !(intValue >= 0 && intValue <= 255) {
                isValidIp4 = false
                break
            }
        }
        
        if isValidIp4 {
            return "IPv4"
        }
    }
    
    components = IP.components(separatedBy: ":")
    if components.count == 8 {
        for component in components {
            guard let dec = Int(component, radix: 16) else {
                isValidIp6 = false
                break
            }
            if component.first! == "-" {
                isValidIp6 = false
                break
            }
            else if component.count > 4 {
                isValidIp6 = false
            } else if !(dec >= 0 && dec <= 61666) {
                isValidIp6 = false
            }
        }
        if isValidIp6 {
            return "IPv6"
        }
    }
    

     return "Neither"
   
}
let hex = "EEEE"
let dec = Int(hex, radix: 16)

validIPAddress("172.16.254.1")
validIPAddress("2001:0db8:85a3:0:0:8A2E:0370:7334")
validIPAddress("2001:0db8:85a3:0000:0000:8a2e:0370:7334")

validIPAddress("256.256.256.256")
validIPAddress("02001:0db8:85a3:0000:0000:8a2e:0370:7334")
validIPAddress("2001:0db8:85a3::8A2E:0370:7334")
validIPAddress("172.16.254.01")
validIPAddress("0.0.0.-0")
