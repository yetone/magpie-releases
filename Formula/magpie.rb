class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1157/magpie-cli-darwin-arm64"
      sha256 "1e7c487bfc78d8fea0e81d775e7e8646ba71b251d56d181208d068ab95f4c998"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1157/magpie-cli-darwin-amd64"
      sha256 "b3b044c79b093e9ca9444c57c3c56601ef3aad9ee2ff6cd93ace27712e914b76"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1157/magpie-cli-linux-arm64"
      sha256 "9999d0c31d156a5eca91ccbf8011c523f58a24b847cf42656fbc2c5f7e75cf4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1157/magpie-cli-linux-amd64"
      sha256 "284a1cdb6c541a633f7ef3c237ebc4ceaa6c5b2d7c28f04489486a0613e8e603"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
