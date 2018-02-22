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

class ObjectStateTests: XCTestCase {
  
  var player: Player!
  
  override func setUp() {
    super.setUp()
    
    player = Player()
  }
  
  func test_addLife_GivenAPlayerWithNoLives_ShouldAdd1ToLives() {

  }
  
  func test_addLife_GivenAPlayerWithFullLives_ShouldntAddToLives() {
    // Start with 0 lives, and keep adding lives until we pass the maximum
    player.lives = 0
    for _ in 0..<Player.maximumLives {
      player.addLife()
    }
    player.addLife()
    player.addLife()
    // Number of lives should not exceed maximum
    XCTAssertEqual(player.lives, Player.maximumLives)
  }
}
