import Foundation
import Html

let document: Node = .document(
    .html(
        .body(
            .h1("Welcome!"),
            .p("You’ve found our site!")
        )
    )
)

let html = render(document)
let outputURL = URL(fileURLWithPath: "./output.html")
print(outputURL.path)
try html.write(to: outputURL, atomically: true, encoding: .utf8)
