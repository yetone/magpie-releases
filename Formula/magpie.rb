class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3378/magpie-cli-darwin-arm64"
      sha256 "7a338c366a41c572b754518abfcbce1e6c85dee2e2d22a5077f0287f0828e13b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3378/magpie-cli-darwin-amd64"
      sha256 "345e5d0fb4996313f4e26e218136bd484123b173391f88682daa680e628561fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3378/magpie-cli-linux-arm64"
      sha256 "9f01e165839b4de59de06865e987000141b05f5c492b24e7def88858ed8c2a35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3378/magpie-cli-linux-amd64"
      sha256 "7b24e1c5326cc47113d1329cd5a40d97d91273805f35b948ca8f999d3b4b22ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
