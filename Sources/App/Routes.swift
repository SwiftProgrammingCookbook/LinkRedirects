import Vapor

let redirects = ["docs": ["the-basics"  : "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html",
                          "strings"     : "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html",
                          "int"         : "https://developer.apple.com/documentation/swift/int",
                          "float"       : "https://developer.apple.com/documentation/swift/float",
                          "bool"        : "https://developer.apple.com/documentation/swift/bool",
                          "string"      : "https://developer.apple.com/documentation/swift/string"],
                 "code": ["swift-building-blocks": "https://github.com/SwiftProgrammingCookbook/SwiftBuildingBlocks"]]

extension Droplet {
    
    func setupRoutes() throws {
        
        for (path1, value) in redirects {
            
            for (path2, urlString) in value {
                
                get(path1, path2) { req in
                    return Response(redirect: urlString)
                }
            }
        }
    }
}
