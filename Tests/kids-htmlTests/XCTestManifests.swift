import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        [
            testCase(kids_htmlTests.allTests)
        ]
    }
#endif
