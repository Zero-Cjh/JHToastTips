import XCTest
@testable import JHToastTips

final class JHToastTipsTests: XCTestCase {
    func testDurationTime() throws {
        JHToast.durationTime = 10
        XCTAssertEqual(JHToast.durationTime, 10)
    }
}
