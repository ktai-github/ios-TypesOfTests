// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Testing

class ViewControllerTests: XCTestCase {
  
  var viewController: ViewController!
  override func setUp() {
    super.setUp()
    viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
  }
  
  func test_ShouldBeTheTableViewsDelegate() {
    _ = viewController.view
    XCTAssert(viewController.tableView.delegate === viewController)
  }
  
  func test_ShouldBeTheTableViewsDataSource() {

  }
  
  func test_tableViewRows_ShouldEqualNumberOfTitles() {
    viewController.titles = ["",""]
    _ = viewController.view
    XCTAssertEqual(viewController.tableView.numberOfRows(inSection: 0), viewController.titles.count)
  }
  
  func test_tableViewSections_ShouldEqualOne() {
    
  }
  
}
