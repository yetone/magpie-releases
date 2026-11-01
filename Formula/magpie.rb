class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2652/magpie-cli-darwin-arm64"
      sha256 "45b4c379444f26f2ed233990cafd0b7fa7dbbe5f49630fc10b2ee7d40740e528"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2652/magpie-cli-darwin-amd64"
      sha256 "ea252e0e0a49b6fc99949314854981b130bf207b862b18fc92235869089704cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2652/magpie-cli-linux-arm64"
      sha256 "7e51139440a3313dc952c296b1a577d3d02f892076c321f3a535080a7b58ab2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2652/magpie-cli-linux-amd64"
      sha256 "64c18aff40e6934323e17761fb3bf19fc8d5964217428632ab8b84aa542fd5df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
