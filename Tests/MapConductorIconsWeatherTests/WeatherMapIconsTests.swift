import XCTest
import MapConductorIcons
@testable import MapConductorIconsWeather

final class WeatherMapIconsTests: XCTestCase {
    func testInitialCollectionHasSevenGlyphs() {
        XCTAssertEqual([
            WeatherMapIcons.clearDay, WeatherMapIcons.cloud, WeatherMapIcons.rain,
            WeatherMapIcons.snow, WeatherMapIcons.thunderstorm, WeatherMapIcons.wind,
            WeatherMapIcons.fog,
        ].count, 7)
    }

    func testAllGlyphsRenderInCommonPinContainer() {
        let glyphs = [
            WeatherMapIcons.clearDay, WeatherMapIcons.cloud, WeatherMapIcons.rain,
            WeatherMapIcons.snow, WeatherMapIcons.thunderstorm, WeatherMapIcons.wind,
            WeatherMapIcons.fog,
        ]
        for glyph in glyphs {
            let bitmap = PinGlyphIcon(glyph: glyph).toBitmapIcon()
            XCTAssertGreaterThan(bitmap.size.width, 0, glyph.id)
            XCTAssertNotNil(bitmap.bitmap.pngData(), glyph.id)
        }
    }
}
