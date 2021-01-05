class Galette < Formula
    homepage "https://github.com/simon-frankau/galette"
    head "https://github.com/simon-frankau/galette.git"

    depends_on "rust" => :build

    def install
        system "cargo", "build", "--release", "--bin", "galette"
        bin.install "target/release/galette"
    end
end
