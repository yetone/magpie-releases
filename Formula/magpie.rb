class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2995/magpie-cli-darwin-arm64"
      sha256 "a6e7e08f1b20ce3a6e9a24efa3617c42994d436942f24d3f77f08cf9763f3254"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2995/magpie-cli-darwin-amd64"
      sha256 "12bd52f9fa200bf223e3491608c9ce4d7756ed9631e8615fab781d5488c2c9a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2995/magpie-cli-linux-arm64"
      sha256 "61e8889902b660117a020b5fc860a113c45c942f6196fcb8bbd230b4b8caea89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2995/magpie-cli-linux-amd64"
      sha256 "5343829f5d55108b30578af32edd3c55ee85899d4db50ed8fd4faa6569f559b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
