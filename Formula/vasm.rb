class Vasm < Formula
  desc "A portable and retargetable assembler."
  homepage "http://sun.hasenbraten.de/vasm/"
  url "http://server.owl.de/~frank/tags/vasm1_8g.tar.gz"
  version "1.8g"
  sha256 "a554f1a8ca2310a1f8b54ab7db2067910ab7e14e0bf56f27dd2d2873a5f70599"

  def install
    system "make", "CPU=z80", "SYNTAX=oldstyle"
    system "mkdir", "#{prefix}/bin"
    system "cp", "vasmz80_oldstyle", "#{prefix}/bin"
  end

  test do
    system "#{bin}/vasmz80_oldstyle"
  end
end
