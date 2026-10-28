class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1935/magpie-cli-darwin-arm64"
      sha256 "599ee78e7ddad04efcec25f2d6fa0c6202f1a83494ee1750003a26142d7f1053"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1935/magpie-cli-darwin-amd64"
      sha256 "b550122791f4f069087a7777a6a19f7d9c3bda3e367c4289ada761ea1047616c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1935/magpie-cli-linux-arm64"
      sha256 "57d3e424e665c2fb6551ee9fab669fc7ca73c25c0c8bf0d50c1a74d999714d1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1935/magpie-cli-linux-amd64"
      sha256 "2b85af77d20ae0547a7033f7db13e7eff4b910e24bbece12b146f547af506d76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
