{ cabal, hxt, hxtCharproperties, hxtUnicode, tagsoup }:

cabal.mkDerivation (self: {
  pname = "hxt-tagsoup";
  version = "9.1.3";
  sha256 = "1rp499j6w3h9xfxqyw2fn05ffq3z0wg1r9h2c205m37mb8visq77";
  buildDepends = [ hxt hxtCharproperties hxtUnicode tagsoup ];
  meta = {
    homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
    description = "TagSoup parser for HXT";
    license = "unknown";
    platforms = self.ghc.meta.platforms;
  };
})
