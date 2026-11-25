class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4785/magpie-cli-darwin-arm64"
      sha256 "d301d95fdd008c819f6d486e4e6442af6a1e7390d4862eb178fb04e0972077c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4785/magpie-cli-darwin-amd64"
      sha256 "d65a67faed4b4f88f13de231447a8fc70028abcecbb16c7e732ac8f49e344824"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4785/magpie-cli-linux-arm64"
      sha256 "759f1135c52f8a45f9ce42d4a1df1a2a7e1dcab6f50c9a3c887504b32d2e0a5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4785/magpie-cli-linux-amd64"
      sha256 "679a2317665f94e9529a58f2d48c37def0b2467db189a68c11fe921cd710a85d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
