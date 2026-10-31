class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2299/magpie-cli-darwin-arm64"
      sha256 "4b7d05c139469409e28f646b88181089c111b65204a643a8185bff6eb7d5b2cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2299/magpie-cli-darwin-amd64"
      sha256 "90d93d9c55fe4ae765d4c6e8978236a2eee619dd92d97f2c22d0a5265d2e2113"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2299/magpie-cli-linux-arm64"
      sha256 "46b4454d89b9d37513cbc2cac3f048424ef894c9ff0cf23c1229b9197dfddab3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2299/magpie-cli-linux-amd64"
      sha256 "5e21163f65fc9f0626c83160872771b87b923d17e607f3567c05fda9cd47872a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
