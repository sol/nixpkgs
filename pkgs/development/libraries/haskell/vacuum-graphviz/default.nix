{ cabal, filepath, graphviz, vacuum }:

cabal.mkDerivation (self: {
  pname = "vacuum-graphviz";
  version = "2.1.0.1";
  sha256 = "093ba6n30a6gyifnk3bd50rkx8qldjqq9vsk92pnq152ibs36b2m";
  buildDepends = [ filepath graphviz vacuum ];
  jailbreak = true;
  meta = {
    description = "A library for transforming vacuum graphs into GraphViz output";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})
