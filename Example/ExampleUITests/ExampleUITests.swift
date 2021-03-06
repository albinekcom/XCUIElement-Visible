import XCTest

final class ExampleUITests: XCTestCase {
    
    private var application: XCUIApplication!
    
    // MARK: - Setting
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        application = XCUIApplication()
        application.launch()
    }
    
    // MARK: - Tests
    
    func testIsVisible() {
        let mainLabel = application.staticTexts["Label is visible"]
        
        XCTAssertTrue(mainLabel.isVisible)
        application.buttons["Move Label Outside Of The Main View"].tap()
        XCTAssertFalse(mainLabel.isVisible)
    }
    
}
