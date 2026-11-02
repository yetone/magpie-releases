class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2707/magpie-cli-darwin-arm64"
      sha256 "44be389e1d96a0676ee8d564297dfef888f422c0f3972e3a3204cc3d10c7c498"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2707/magpie-cli-darwin-amd64"
      sha256 "645d5b6c56a810295105333cd3b337c5618adf3cbe41fbc03e08220a2a644256"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2707/magpie-cli-linux-arm64"
      sha256 "233985dee9cbce3769888a25c7f3dbf3c54353d5229eee8acbffe1b961982bf2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2707/magpie-cli-linux-amd64"
      sha256 "d56c1f039c5e0a1bdbefb708eedda8c640da723397a8b09df7a202e306a14456"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
