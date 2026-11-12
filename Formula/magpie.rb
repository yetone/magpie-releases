class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3941/magpie-cli-darwin-arm64"
      sha256 "664396553bccc1a84d587bd52ebd0cf58b28bab6916c6d86929839e4d8751389"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3941/magpie-cli-darwin-amd64"
      sha256 "85e87859a1f097f957f4c3f624ec671d4a903e7da072c9cd8f3db93c22a00036"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3941/magpie-cli-linux-arm64"
      sha256 "ad0366e13fbd7dea92c032eef0758f48ee706b627c83a32296145dd043dca8ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3941/magpie-cli-linux-amd64"
      sha256 "50b28c652cfb20c5ae6e10de0e5873592bbe1f62611d2b76c17e81ddd6ca2bdd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
