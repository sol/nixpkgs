{ cabal, GLURaw, libX11, mesa, OpenGLRaw, text }:

cabal.mkDerivation (self: {
  pname = "OpenGL";
  version = "2.9.2.0";
  sha256 = "1sa5jmhj0az6sik6swv2vgzhv9gj34dbq2px23ag1a4yrk5gcn0p";
  buildDepends = [ GLURaw OpenGLRaw text ];
  extraLibraries = [ libX11 mesa ];
  meta = {
    homepage = "http://www.haskell.org/haskellwiki/Opengl";
    description = "A binding for the OpenGL graphics system";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
