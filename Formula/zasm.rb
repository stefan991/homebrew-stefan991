class Zasm < Formula
  desc "Z80 Assembler"
  homepage "https://k1.spdns.de/Develop/Projects/zasm/"
  # url "https://bitbucket.org/megatokio/zasm/downloads/zasm-4.2.1-macos10.12.zip"
  url "http://k1.spdns.de/Develop/Projects/zasm/Distributions/zasm-4.2.4-macos10.12.zip"
  # version "4.2.1"
  version "4.2.4"
  # sha256 "5966aeca3654ac4d8a289ac59c598227c699e57efd1450b55449b8e772fa5ec4"
  sha256 "cfa4be8287eb64c1201625b46afe3e53900bbf1a2e59518b385a1c8a49cb932f"

  def install
    system "mkdir", "#{prefix}/bin" 
    system "cp", "-R", "zasm", "#{prefix}/bin" 
  end

  test do
    system "#{bin}/zasm"
  end
end
