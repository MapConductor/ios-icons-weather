# MapConductor Weather Icons — iOS

Weather glyphs for MapConductor iOS markers. The pack is region-neutral and selected explicitly by the application.

## Installation

In Xcode, choose **File → Add Package Dependencies**, enter the URL below, select branch `main`, and add `MapConductorIconsWeather`:

```text
https://github.com/MapConductor/ios-icons-weather.git
```

## Quick start

```swift
import MapConductorIcons
import MapConductorIconsWeather
import UIKit

let rainMarker = PinGlyphIcon(
    glyph: WeatherMapIcons.rain,
    fillColor: .systemBlue,
    glyphColor: .white
)
```

All seven weather glyphs can be used with `PinGlyphIcon`. Glyph IDs and shapes match the Android and React packages.

<!-- BEGIN GENERATED ICON CATALOG -->
## Included glyphs

Glyph IDs are stable across Android, iOS, and React.

| Preview | API | Stable ID | Description |
|---|---|---|---|
| <img src="docs/icons/clear_day.svg" width="40" height="40" alt="Clear daytime weather"> | `WeatherMapIcons.clearDay` | `weather.clear_day` | Clear daytime weather |
| <img src="docs/icons/cloud.svg" width="40" height="40" alt="Cloudy weather"> | `WeatherMapIcons.cloud` | `weather.cloud` | Cloudy weather |
| <img src="docs/icons/rain.svg" width="40" height="40" alt="Rain"> | `WeatherMapIcons.rain` | `weather.rain` | Rain |
| <img src="docs/icons/snow.svg" width="40" height="40" alt="Snow"> | `WeatherMapIcons.snow` | `weather.snow` | Snow |
| <img src="docs/icons/thunderstorm.svg" width="40" height="40" alt="Thunderstorm"> | `WeatherMapIcons.thunderstorm` | `weather.thunderstorm` | Thunderstorm |
| <img src="docs/icons/wind.svg" width="40" height="40" alt="Wind"> | `WeatherMapIcons.wind` | `weather.wind` | Wind |
| <img src="docs/icons/fog.svg" width="40" height="40" alt="Fog"> | `WeatherMapIcons.fog` | `weather.fog` | Fog |
<!-- END GENERATED ICON CATALOG -->
