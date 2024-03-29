<!-- -*- mode: markdown; fill-column: 8192 -*- -->

# 2020-01-04

## Miscellaneous

* Reviewed the Keyboardio Atreus layout card for Jesse.

## Kaleidoscope

* Opened [Kaleidoscope#783][kaleidoscope/783].
* Opened [Kaleidoscope#784][kaleidoscope/784].
* Opened [Kaleidoscope#785][kaleidoscope/785] and [KeyboardioScanner#19][keyboardioscanner/19].

 [kaleidoscope/783]: https://github.com/keyboardio/Kaleidoscope/pull/783
 [kaleidoscope/784]: https://github.com/keyboardio/Kaleidoscope/pull/784
 [kaleidoscope/785]: https://github.com/keyboardio/Kaleidoscope/pull/785
 [keyboardioscanner/19]: https://github.com/keyboardio/KeyboardioScanner/pull/19

# 2020-01-03

## Kaleidoscope

* Posted an idea about layers to [Kaleidoscope#564][kaleidoscope/564].

 [kaleidoscope/564]: https://github.com/keyboardio/Kaleidoscope/issues/564

# 2020-01-02

## Kaleidoscope

* Opened [Kaleidoscope#781][kaleidoscope/781], fixing the USB-Quirks plugin, which is responsible for switching between 6KRO and NKRO.
* Fixed the `pressedKeyswitchCount()` and `previousPressedKeyswitchCount()` methods on the Raise. We were counting the first 32 bits of our per-hand state, instead of the full 64 bits.
* Closed [Kaleidoscope#706][kaleidoscope/706], it is obsoleted by [Kaleidoscope#782][kaleidoscope/782].
* Started working on a PR to address [Kaleidoscope#780][kaleidoscope/780].

 [kaleidoscope/781]: https://github.com/keyboardio/Kaleidoscope/pull/781
 [kaleidoscope/706]: https://github.com/keyboardio/Kaleidoscope/pull/706
 [kaleidoscope/782]: https://github.com/keyboardio/Kaleidoscope/pull/782

# 2020-01-01

## Kaleidoscope

* Reopened [Kaleidoscope#779][kaleidoscope/779], because it turned out that the alternative ideas I had are full of unsolvable corner cases. Also wrote a bit of documentation about layers, layer keys, and related things.
* Fixed the RGB component order for the Raise, and made it compile again.
* Opened [Kaleidoscope#780][kaleidoscope/780].

 [kaleidoscope/779]: https://github.com/keyboardio/Kaleidoscope/pull/779
 [kaleidoscope/780]: https://github.com/keyboardio/Kaleidoscope/issues/780

<!--
; Local variables:
; eval: (variable-pitch-mode nil)
; End:
-->
