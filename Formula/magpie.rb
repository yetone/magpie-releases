class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2486/magpie-cli-darwin-arm64"
      sha256 "b96ba04337c02de7bcacb6232308aba274a19f6cc4c51865e0778fa7746ecc6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2486/magpie-cli-darwin-amd64"
      sha256 "06c26c0699327a38a95972dbf5dfbc6f36319511812e41b98d3172b4a939dd19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2486/magpie-cli-linux-arm64"
      sha256 "107bcf6ae888140e8a32aed010713c39f27f721c40b8a777a617133eb7dcbf55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2486/magpie-cli-linux-amd64"
      sha256 "279e8b0fabaec731d778d158804e47499ee67a12fcac218447c8b9970c3e0477"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
