class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4993/magpie-cli-darwin-arm64"
      sha256 "41d8855220111165c2eadf936a82f2c96a3189e7172ca18abfe6f54fee9c9728"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4993/magpie-cli-darwin-amd64"
      sha256 "8c29e6eacaf481fe91988574f537d979958272e34be38017ee7ec71a55c32a1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4993/magpie-cli-linux-arm64"
      sha256 "ba7bbf419c35177cc580d26c2657af0b32a09b7ec3bc365138a2a38694a681d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4993/magpie-cli-linux-amd64"
      sha256 "c537adf549b0f13bac05c80b7f46b3d3fccaa8b9d777467f918a62f4c3652454"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
