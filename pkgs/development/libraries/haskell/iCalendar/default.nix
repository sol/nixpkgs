{ cabal, base64Bytestring, caseInsensitive, dataDefault, mime, mtl
, network, parsec, text, time
}:

cabal.mkDerivation (self: {
  pname = "iCalendar";
  version = "0.4.0.1";
  sha256 = "08m47nxxz70lmmndlgycfb27x8xfwakxi8izbba0f6w23ddaljp3";
  buildDepends = [
    base64Bytestring caseInsensitive dataDefault mime mtl network
    parsec text time
  ];
  meta = {
    homepage = "http://github.com/tingtun/iCalendar";
    description = "iCalendar data types, parser, and printer";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.ocharles ];
  };
})
