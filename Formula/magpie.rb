class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2529/magpie-cli-darwin-arm64"
      sha256 "88d53301e501ae81f7541cccbc180bb681fdb3ca35e3b649ccdedc71854ce2df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2529/magpie-cli-darwin-amd64"
      sha256 "78339f4fd58bdb76d2b7745df222220b187475ce2b4279a6ed2dce584344a329"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2529/magpie-cli-linux-arm64"
      sha256 "bc50fad4d2f6261cdeb68f6f4c12dcdd120dc8493d3e4e301b22f2d01a3656ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2529/magpie-cli-linux-amd64"
      sha256 "1158d2259dfd2dc1aa2d611c619b6599d33367480f926710f60f430c59a97a8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
