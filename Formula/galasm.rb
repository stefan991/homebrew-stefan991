class Galasm < Formula
    homepage "https://github.com/daveho/GALasm"
    head "https://github.com/daveho/GALasm.git"

    def install
        Dir.chdir "src"
        system "make"
        bin.install "galasm"
    end
end
