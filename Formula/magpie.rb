class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3405/magpie-cli-darwin-arm64"
      sha256 "16b948e78c215311ecf137a084ae1e9e0e2265bdfcabb865eb4d3a68b30528ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3405/magpie-cli-darwin-amd64"
      sha256 "ad36b69c76d441ae3825d7bbbd15529f9d1a843400531e120f6ecba6457f5da8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3405/magpie-cli-linux-arm64"
      sha256 "c38b48ef0187a57b823f44fb8cb67ca3c4d0a2f1902caa67d030ad1e47bcde04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3405/magpie-cli-linux-amd64"
      sha256 "6ef8348498259026d504ef7363267b4b2772667cd28d96a017ec37a4abc69b89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
