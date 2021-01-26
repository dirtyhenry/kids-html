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

func output(document: Node, path: String, pretty: Bool = false) throws {
    let html = pretty ? debugRender(document) : render(document)
    let outputURL = URL(fileURLWithPath: path)
    try html.write(to: outputURL, atomically: true, encoding: .utf8)
    print("Document written to: \(outputURL.path)")
}

try output(document: document, path: "./output.html")
try output(document: document, path: "./output-pretty.html", pretty: true)
