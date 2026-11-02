class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2689/magpie-cli-darwin-arm64"
      sha256 "8a84c413eeec9ed121e2af04850c5ce23581ef8725dfe8c49b69558cbaa243ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2689/magpie-cli-darwin-amd64"
      sha256 "86d80aa99e79d3f6fbdf6defbaf20807427e6dc0ae9d47bce6f3e535bb1d4bc9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2689/magpie-cli-linux-arm64"
      sha256 "2b576f2ec360c256f2e19f130fb0792de093583081a21b21044b1d2e038fc9e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2689/magpie-cli-linux-amd64"
      sha256 "06a51b89c1ab9b5c3f10dee1279263d68bebb7e304ad03b0ee3c7d4321dd7f58"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
