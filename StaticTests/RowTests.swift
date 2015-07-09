import XCTest
import Static

class RowTests: XCTestCase {

    func testInit() {
        let selection: Void -> Void = {}
        let row = Row(UUID: "1234", text: "Title", detailText: "Detail", accessory: .Checkmark, selection: selection, cellClass: ButtonCell.self)
        XCTAssertEqual("1234", row.UUID)
        XCTAssertEqual("Title", row.text!)
        XCTAssertEqual("Detail", row.detailText!)
        XCTAssertEqual(.Checkmark, row.accessory)
        XCTAssertTrue(row.isSelectable)
        XCTAssertNotNil(row.cellIdentifier)
    }

    func testHashable() {
        let row = Row()
        var hash = [
            row: "hi"
        ]

        XCTAssertEqual("hi", hash[row]!)
    }

    func testEquatable() {
        let row1 = Row()
        let row2 = Row()

        XCTAssertEqual(row1, row1)
        XCTAssertFalse(row1 == row2)
    }
}
