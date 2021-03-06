{ cabal, attoparsec, heredoc, hspec, QuickCheck, time, transformers
}:

cabal.mkDerivation (self: {
  pname = "robots-txt";
  version = "0.4.1.0";
  sha256 = "1q18pgilrwppmd8d7pby3p6qgk47alzmd8izqspk7n4h4agrscn4";
  buildDepends = [ attoparsec time ];
  testDepends = [ attoparsec heredoc hspec QuickCheck transformers ];
  meta = {
    homepage = "http://github.com/meanpath/robots";
    description = "Parser for robots.txt";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
