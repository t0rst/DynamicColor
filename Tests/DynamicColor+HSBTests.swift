/*
 * DynamicColor
 *
 * Copyright 2015-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import XCTest

class DynamicColorHSBTests: XCTTestCaseTemplate {
  func testToHSBComponents() {
    let customColor = DynamicColor(hue: 0.1, saturation: 0.3, brightness: 0.5, alpha: 1)
    let hsb         = customColor.toHSBComponents()

    XCTAssert(hsb.h == 0.1, "Color hue component should be equal to 0.1 (not \(hsb.h))")
    XCTAssert(hsb.s == 0.3, "Saturation component should be equal to 0.3 (not \(hsb.s))")
    XCTAssert(hsb.b == 0.5, "Brightness component should be equal to 0.5 (not \(hsb.b))")

    let blackHSB = DynamicColor.black.toHSBComponents()

    XCTAssert(blackHSB.h == 0, "Color hue component should be equal to 0 (not \(blackHSB.h))")
    XCTAssert(blackHSB.s == 0, "Saturation component should be equal to 0 (not \(blackHSB.s))")
    XCTAssert(blackHSB.b == 0, "Brightness component should be equal to 0 (not \(blackHSB.b))")

    let whiteHSB = DynamicColor.white.toHSBComponents()

    XCTAssert(whiteHSB.h == 0, "Color hue component should be equal to 0 (not \(whiteHSB.h))")
    XCTAssert(whiteHSB.s == 0, "Saturation component should be equal to 0 (not \(whiteHSB.s))")
    XCTAssert(whiteHSB.b == 1, "Brightness component should be equal to 1 (not \(whiteHSB.b))")

    let redHSB = DynamicColor.red.toHSBComponents()

    XCTAssert(redHSB.h == 1 || redHSB.h == 0, "Color hue component should be equal to 1 or 0 (not \(redHSB.h))")
    XCTAssert(redHSB.s == 1, "Saturation component should be equal to 1 (not \(redHSB.s))")
    XCTAssert(redHSB.b == 1, "Brightness component should be equal to 1 (not \(redHSB.b))")
  }

  func testHueComponent() {
    let redHue = DynamicColor.red.hueComponent

    XCTAssert(redHue == 1 || redHue == 0, "Color hue component should be equal to 1 or 0 (not \(redHue))")

    let blackHue = DynamicColor(r: 0, g: 0, b: 0).hueComponent

    XCTAssert(blackHue == 0, "Color hue component should be equal to 0 (not \(blackHue))")
  }

  func testSaturationComponent() {
    let redSaturation = DynamicColor.red.hueComponent

    XCTAssert(redSaturation == 1 || redSaturation == 0, "Color saturation component should be equal to 1 or 0 (not \(redSaturation))")

    let blackSaturation = DynamicColor(r: 0, g: 0, b: 0).hueComponent

    XCTAssert(blackSaturation == 0, "Color saturation component should be equal to 0 (not \(blackSaturation))")
  }

  func testBrightnessComponent() {
    let redBrightness = DynamicColor.red.hueComponent

    XCTAssert(redBrightness == 1 || redBrightness == 0, "Color brightness component should be equal to 1 or 0 (not \(redBrightness))")

    let blackBrightness = DynamicColor(r: 0, g: 0, b: 0).hueComponent

    XCTAssert(blackBrightness == 0, "Color brightness component should be equal to 0 (not \(blackBrightness))")
  }
}