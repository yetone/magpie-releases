class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3668/magpie-cli-darwin-arm64"
      sha256 "550ea7a8be8cf75aabc1899ea1a7167da7eb2834d2f3cc8d22adae0ff1f1b32c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3668/magpie-cli-darwin-amd64"
      sha256 "da3a55731be3f7faa2425f2380adc93ffe24801d2de7325e4d21990dffea05d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3668/magpie-cli-linux-arm64"
      sha256 "477356c85806ee735119bbe2bca98e2847c32f28df27566dbc2aa6429db4f5da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3668/magpie-cli-linux-amd64"
      sha256 "4e6bc30aa0b4f9c0aa9860cdef2ffe08b7c3be921400a5fb157578133fca66a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
