class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3231/magpie-cli-darwin-arm64"
      sha256 "53906f5ba1bd6a8b807a949f86e752292c6300b21d36569bac0812dfe78d995e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3231/magpie-cli-darwin-amd64"
      sha256 "6f2dbebbcfaabcdedff0a49d12f80847fba953ef2d305da1c1cef3b65574de86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3231/magpie-cli-linux-arm64"
      sha256 "de3fc9c2cecc827f006f2fefff62c2e53c58aeef1fef72df51e64f540efc9997"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3231/magpie-cli-linux-amd64"
      sha256 "bb6fa8db0eb70982b9709342b6759a5287bb90087181766c0b362a9b41a06282"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
