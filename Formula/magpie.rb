class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2857/magpie-cli-darwin-arm64"
      sha256 "61624753517a4278dd0c35ab162220fc90ff8577d9dd745552c7516dd94d9484"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2857/magpie-cli-darwin-amd64"
      sha256 "b3902567dab66ef894f6a02032e5f6942297f0879c69e156d74854ab77f81bc2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2857/magpie-cli-linux-arm64"
      sha256 "fe2446b2e9f75ca1c08b8b784a3b432c6dcf190afdadc8774e29cd2d9d8f955f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2857/magpie-cli-linux-amd64"
      sha256 "c642e51c7c2dec4de3da67ca0e74c6ef46fa55d7f4e0ae2d9f289c42f412c33f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
