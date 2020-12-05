class Zasm < Formula
  desc "Z80 Assembler"
  homepage "https://k1.spdns.de/Develop/Projects/zasm/"
  url "https://k1.spdns.de/Develop/Projects/zasm/Distributions/zasm-4.4.5-macos10.12.zip"
  version "4.4.5"
  sha256 "cd26f1fa7970f2ae6209b76c5c5ee7cda648cbc742badea332bd2de5ab4ed34f"

  def install
    system "mkdir", "#{prefix}/bin" 
    system "cp", "-R", "zasm", "#{prefix}/bin" 
  end

  test do
    system "#{bin}/zasm"
  end
end
