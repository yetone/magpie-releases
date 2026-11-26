class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4912/magpie-cli-darwin-arm64"
      sha256 "11c9c72e84aa39e4c99c9709b71398f344db91c23a7cc35128583a7ab70a23df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4912/magpie-cli-darwin-amd64"
      sha256 "11ca342c8e6ec678b9f98dd009485c49a03f39c9a7767abea479e83434db605d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4912/magpie-cli-linux-arm64"
      sha256 "b66c6ab41d7ea4b5d43783ed2a488b840a28c07e9ea4681ec58cf5eb827837ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4912/magpie-cli-linux-amd64"
      sha256 "577b6c4d64bbb446913a1f7ad5b34905c8870895152d4ac5150a2a47c794333f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
