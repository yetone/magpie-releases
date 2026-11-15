class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4265/magpie-cli-darwin-arm64"
      sha256 "ae3d8842c81b1f116f2e440c4536f0a3250b1a9d9469f8529175c431f261f0a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4265/magpie-cli-darwin-amd64"
      sha256 "ea92e17850d2ae0ff82f68063c7e69ed884d0f8c57b06d9870ade9d8d6d12e30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4265/magpie-cli-linux-arm64"
      sha256 "c855bc06c4bcd97a9a8230f39f9da165f98964d6725a7d08abfc87ea4f677fbb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4265/magpie-cli-linux-amd64"
      sha256 "21120a89b1683b1c4445856caed7cf2b0c5805cdf0fb7c96b03ee620114cd87e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
