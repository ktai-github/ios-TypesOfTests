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

class MockUserDefaults: UserDefaultsType {
  
  var values: [String: Any?] = [:]
  var currentScore = -1
  
  func set(_ value: Any?, forKey defaultName: String) {
    values[defaultName] = value
    if defaultName == GameStateManager.currentScoreKey, let value = value as? Int {
      currentScore = value
    }
  }
  
  func data(forKey: String) -> Data? {
    return nil
  }
  
  func integer(forKey defaultName: String) -> Int {
    return -1
  }
  
}

class MockTests: XCTestCase {
  
  var mockUserDefaults: MockUserDefaults!
  var gameStateManager: GameStateManager!
  
  override func setUp() {
    super.setUp()
    
    mockUserDefaults = MockUserDefaults()
    gameStateManager = GameStateManager()
    gameStateManager.userDefaults = mockUserDefaults
  }
  
  func test_getScore_ShouldReturnTheUserDefaultScore() {
    
  }
  
  func test_saveScore_GivenANumber_ShouldSaveThatNumberToUserDefaults() {
    gameStateManager.save(currentScore: 0)
    XCTAssertEqual(mockUserDefaults.currentScore, 0);
    
    gameStateManager.save(currentScore: 1)
    XCTAssertEqual(mockUserDefaults.currentScore, 1);
    
    gameStateManager.save(currentScore: 2)
    XCTAssertEqual(mockUserDefaults.currentScore, 2);
  }
  
}
