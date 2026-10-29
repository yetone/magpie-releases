class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2024/magpie-cli-darwin-arm64"
      sha256 "6777a365183ce6c85a9cc07d451e18c80bc9e358465e8f7ca835dd87d09e2cf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2024/magpie-cli-darwin-amd64"
      sha256 "6a2bd1440cb0a1e8ea8f4be4fe20875edf34e0a1def6e7511265f98db7ce42b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2024/magpie-cli-linux-arm64"
      sha256 "fac52f1366cd6167bbc24b5f34cebaba8f353af191a14525da50fd39094a6222"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2024/magpie-cli-linux-amd64"
      sha256 "cd3cef3110a7b020fcd04c1e919ca38890a399052abab906b7fcfd353b33dcc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
