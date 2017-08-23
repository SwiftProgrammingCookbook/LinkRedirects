import Vapor

let redirects = ["docs": ["the-basics"  : "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html",
                          "strings"     : "https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html",
                          "int"         : "https://developer.apple.com/documentation/swift/int",
                          "float"       : "https://developer.apple.com/documentation/swift/float",
                          "bool"        : "https://developer.apple.com/documentation/swift/bool",
                          "string"      : "https://developer.apple.com/documentation/swift/string",
                          "vc-lifecycle"        : "https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html#//apple_ref/doc/uid/TP40015214-CH6-SW3",
                          "uitableviewdelegate﻿" : "https://developer.apple.com/documentation/uikit/uitableviewdelegate",
                          "vc-guide"            : "https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457",
                          "xmlparser"           : "https://developer.apple.com/reference/foundation/xmlparser",
                          "foundation" : "https://developer.apple.com/documentation/foundation",
                          "networking" : "https://developer.apple.com/library/content/documentation/NetworkingInternetWeb/Conceptual/NetworkingOverview/Introduction/Introduction.html",
                          "urlsession-guide" : "https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/URLLoadingSystem/URLLoadingSystem.html#//apple_ref/doc/uid/10000165i",
                          "playgroundsupport" : "https://developer.apple.com/reference/playgroundsupport"],
                 "code": ["chapter1" : "https://github.com/SwiftProgrammingCookbook/SwiftBuildingBlocks",
                          "chapter2" : "https://github.com/SwiftProgrammingCookbook/BuildingOnTheBuildingBlocks",
                          "chapter3" : "https://github.com/SwiftProgrammingCookbook/DataWranglingWithSwiftControlFlow",
                          "chapter4" : "https://github.com/SwiftProgrammingCookbook/GenericsOperatorsAndNestedTypes",
                          "chapter5" : "https://github.com/SwiftProgrammingCookbook/BeyondTheStandardLibrary",
                          "chapter6" : "https://github.com/SwiftProgrammingCookbook/SwiftPlaygroundExamples"],
                 "resources": ["texture.png" : "https://raw.githubusercontent.com/SwiftProgrammingCookbook/SwiftPlaygroundExamples/master/EmbeddedResource.playground/Resources/texture.png"]]

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
