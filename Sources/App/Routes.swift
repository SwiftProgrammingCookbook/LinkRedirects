import Vapor

let redirects = ["docs": ["the-basics"  : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html",
                          "strings"     : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html",
                          "int"         : "https://developer.apple.com/documentation/swift/int",
                          "float"       : "https://developer.apple.com/documentation/swift/float",
                          "bool"        : "https://developer.apple.com/documentation/swift/bool",
                          "string"      : "https://developer.apple.com/documentation/swift/string",
                          "functions"   : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html",
                          "classes-and-structures" : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html",
                          "enums"       : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html",
                          "vc-lifecycle"        : "https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html#//apple_ref/doc/uid/TP40015214-CH6-SW3",
                          "closures"            : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html",
                          "protocols"           : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html",
                          "types"               : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Types.html",
                          "collections"         : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html",
                          "subscripts"          : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Subscripts.html",
                          "declarations"        : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Declarations.html",
                          "properties"          : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html",
                          "access-control"      : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AccessControl.html",
                          "extensions"          : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html",
                          "statements"          : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Statements.html",
                          "tuples"              : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID329",
                          "for-in": "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID121",
                          "while": "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID124",
                          "error-handling"      : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ErrorHandling.html",
                          "guard"               : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Statements.html#//apple_ref/doc/uid/TP40014097-CH33-ID524",
                          "defer"               : "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Statements.html#//apple_ref/doc/uid/TP40014097-CH33-ID532",
                          "fatalerror"          : "https://developer.apple.com/documentation/swift/1538698-fatalerror",
                          "uitableviewdelegate﻿" : "https://developer.apple.com/documentation/uikit/uitableviewdelegate",
                          "vc-guide"            : "https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457",
                          "xmlparser"           : "https://developer.apple.com/documentation/foundation/xmlparser",
                          "foundation" : "https://developer.apple.com/documentation/foundation",
                          "networking" : "https://developer.apple.com/library/content/documentation/NetworkingInternetWeb/Conceptual/NetworkingOverview/Introduction/Introduction.html",
                          "urlsession-guide" : "https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/URLLoadingSystem/URLLoadingSystem.html#//apple_ref/doc/uid/10000165i",
                          "playgroundsupport" : "https://developer.apple.com/documentation/playgroundsupport",
                          "dispatchqueue" : "https://developer.apple.com/documentation/dispatch/dispatchqueue",
                          "dispatchgroup﻿" : "https://developer.apple.com/documentation/dispatch/dispatchgroup",
                          "operation﻿" : "https://developer.apple.com/documentation/foundation/operation"],
                 "blog": ["type-semantics": "https://developer.apple.com/swift/blog/?id=10"],
                 "code": ["get-all": "https://gist.githubusercontent.com/keefmoon/c9ca76a4fd59d62b20a4938ed8b51d38/raw/7148e82ed1f5573b73b6a4d22150eaf561d79807/swift-cookbook-get-all.sh",
                          "chapter1" : "https://github.com/SwiftProgrammingCookbook/SwiftBuildingBlocks",
                          "chapter2" : "https://github.com/SwiftProgrammingCookbook/BuildingOnTheBuildingBlocks",
                          "chapter3" : "https://github.com/SwiftProgrammingCookbook/DataWranglingWithSwiftControlFlow",
                          "chapter4" : "https://github.com/SwiftProgrammingCookbook/GenericsOperatorsAndNestedTypes",
                          "chapter5" : "https://github.com/SwiftProgrammingCookbook/BeyondTheStandardLibrary",
                          "chapter6" : "https://github.com/SwiftProgrammingCookbook/SwiftPlaygroundExamples",
                          "chapter7" : "https://github.com/SwiftProgrammingCookbook/ServerSideSwift",
                          "chapter8" : "https://github.com/SwiftProgrammingCookbook/PhotobookCreator"],
                 "resources": ["texture.png" : "https://raw.githubusercontent.com/SwiftProgrammingCookbook/SwiftPlaygroundExamples/master/EmbeddedResource.playground/Resources/texture.png"],
                 "videos": ["cryptocurrencies" : "https://www.youtube.com/watch?v=W-Xbf8OH_Fw&feature=youtu.be"],
                 "markdown": ["docs" : "https://daringfireball.net/projects/markdown/syntax",
                              "cheatsheet" : "https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet"]]

extension Droplet {
    
    func setupRoutes() throws {
        
        var pathAndURLStrings = [String: String]()
        
        for (path1, value) in redirects {
            
            for (path2, urlString) in value {
                
                get(path1, path2) { req in
                    return Response(redirect: urlString)
                }
                pathAndURLStrings["\(path1)/\(path2)"] = urlString
            }
        }
        
        // Test endpoint
        
        get("test-links") { [weak self] req in

            guard let strongSelf = self else {
                throw Abort.serverError
            }
            
            var numberOfPasses = 0
            var numberOfFailures = 0
            var testResults: [[String: String]] = []

            for (path, urlString) in pathAndURLStrings {

                let status: String = {
                    
                    let testRequest = Request(method: .get, uri: urlString)
                   
                    if let response = try? strongSelf.client.respond(to: testRequest) {
                        
                        if response.status == .ok {
                            numberOfPasses += 1
                        } else {
                            numberOfFailures += 1
                        }
                        
                        return "\(response.status.statusCode) \(response.status.reasonPhrase)"
                    } else {
                        numberOfFailures += 1
                        return "request failed"
                    }
                }()
                
                let result = ["path": path, "url": urlString, "status": status]
                testResults.append(result)
            }
            
            let response: [String: Any] = ["overview": "Passed: \(numberOfPasses) | Failed: \(numberOfFailures)", "testResults": testResults]

            let node = try response.makeNode(in: nil)
            return JSON(node)
        }
    }
}
