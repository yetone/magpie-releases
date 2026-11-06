class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3186/magpie-cli-darwin-arm64"
      sha256 "a18226cf972344294344311664b1b036e4a43913255ab6edbb53a5ed96213e42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3186/magpie-cli-darwin-amd64"
      sha256 "64e896a60ae5c93b6f0c808fc79525889feafab108241bb421b71483a0b964f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3186/magpie-cli-linux-arm64"
      sha256 "266a7b83e2696a4c565675644a64e26e7e89fbd0719e58bd79b4dc8f2864a55c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3186/magpie-cli-linux-amd64"
      sha256 "f5b06e5b708833917bfdd76002a6b32f5b3cb32f4af4d79ea90ab1e0c24b1027"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
