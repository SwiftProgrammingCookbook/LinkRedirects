import Vapor

let redirects = ["docs": ["the-basics"  : "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html",
                          "strings"     : "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html",
                          "int"         : "https://developer.apple.com/documentation/swift/int",
                          "float"       : "https://developer.apple.com/documentation/swift/float",
                          "bool"        : "https://developer.apple.com/documentation/swift/bool",
                          "string"      : "https://developer.apple.com/documentation/swift/string",
                          "view-controller-lifecycle" : "https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html#//apple_ref/doc/uid/TP40015214-CH6-SW3",
                          "uitableviewdelegate﻿" : "https://developer.apple.com/documentation/uikit/uitableviewdelegate"],
                 "code": ["chapter1" : "https://github.com/SwiftProgrammingCookbook/SwiftBuildingBlocks",
                          "chapter2" : "https://github.com/SwiftProgrammingCookbook/BuildingOnTheBuildingBlocks",
                          "chapter3" : "https://github.com/SwiftProgrammingCookbook/DataWranglingWithSwiftControlFlow",
                          "chapter4" : "https://github.com/SwiftProgrammingCookbook/GenericsOperatorsAndNestedTypes",
                          "chapter5" : "https://github.com/SwiftProgrammingCookbook/BeyondTheStandardLibrary"]]

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
