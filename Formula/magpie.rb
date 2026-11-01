class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2506/magpie-cli-darwin-arm64"
      sha256 "856dba44f27758099636182b6ceecba4287b43d6a2a9a54d680af9ca9543a5ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2506/magpie-cli-darwin-amd64"
      sha256 "03c0683ed885372209203872d2bdb9a2b6a88521bf3fac85e644b67b7b22b423"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2506/magpie-cli-linux-arm64"
      sha256 "60d8a1fd0fab09a611b0dee8d0825b4aaf670f63540680994936b80eedeeb58f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2506/magpie-cli-linux-amd64"
      sha256 "517fe2515b091f4321c5dcbb521adeaa24c08396b33a1162dfe08bc40cf2029c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
