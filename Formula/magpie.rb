class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1978/magpie-cli-darwin-arm64"
      sha256 "6a04517291449e9b852589cbdfe17fee41954214325c05d7c6ebdf8ad20b4e6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1978/magpie-cli-darwin-amd64"
      sha256 "a0497b4fb401abce36d6c1b6d75dce9d43de1b22da8e5ce162b987f213098d70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1978/magpie-cli-linux-arm64"
      sha256 "720d79d6fe1814cab4f55955beb1518035bad16656a6d9ccc291d5f434e94069"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1978/magpie-cli-linux-amd64"
      sha256 "aeb0bb1e13f62aa512cd27b266b44f20e688355105a21510ca64f5ca193c22bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
