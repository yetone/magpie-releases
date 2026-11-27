class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4945/magpie-cli-darwin-arm64"
      sha256 "090e768e27677137a7ae5c6fee894b1eacf992bf2ecaef4df4104f7e8bd7bd7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4945/magpie-cli-darwin-amd64"
      sha256 "63b88b843df8aabac7327d79139e8bdb369161e06d49f8f8f7258347250b1923"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4945/magpie-cli-linux-arm64"
      sha256 "6a91b971ea3502c7f08b489ef8ea35179686c6be73102b7057ff8e6fa4003cec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4945/magpie-cli-linux-amd64"
      sha256 "fde466f332656a28d8d0712f5b7def8b131e6c8c0be04ccea6d0e957f68b9b8e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
