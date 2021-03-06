{ cabal, cairo, filepath, glade, glib, gtk, gtkglext, hp2anyCore
, hp2anyGraph, OpenGL, time
}:

cabal.mkDerivation (self: {
  pname = "hp2any-manager";
  version = "0.4.6";
  sha256 = "143j3ylvzyq1s2l357vzqrwdcgg6rqhnmv0awb3nvm66c9smaarv";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    cairo filepath glade glib gtk gtkglext hp2anyCore hp2anyGraph
    OpenGL time
  ];
  meta = {
    homepage = "http://www.haskell.org/haskellwiki/Hp2any";
    description = "A utility to visualise and compare heap profiles";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
