class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2740/magpie-cli-darwin-arm64"
      sha256 "0aee5a69fec3729966bc03180e525e2d60cccf8a88f0fe0bf76fff46744fe51d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2740/magpie-cli-darwin-amd64"
      sha256 "fa4f41d328ef90049fd739c5e1914064cdeb12afaf88061ad9dca90b313f54f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2740/magpie-cli-linux-arm64"
      sha256 "0830211d79aa4ce999c22b593a52e0e9e08c97c372663a1fd7beb3e1b2c8b5fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2740/magpie-cli-linux-amd64"
      sha256 "c1f21ca3df0a6a9bd4b97fb2622cfcf815691c9a7fd2f0f393773daaf61afc3f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
