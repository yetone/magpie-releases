class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2697/magpie-cli-darwin-arm64"
      sha256 "170bd479e3a5c2a4ed9e3593a0f4929c450252e38d855741196bca3de61d43ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2697/magpie-cli-darwin-amd64"
      sha256 "4e0031688c214bc6ed20dcaa3262769dd12c36c9105dd48073f4e448bea21c58"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2697/magpie-cli-linux-arm64"
      sha256 "1f5f2597b35fa23426fdd17e6111789381e440dd5677191f4971e38e145bce43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2697/magpie-cli-linux-amd64"
      sha256 "627248e123b48723c39eb719b93351d5cda2b813cc6af4f7568943cc75695081"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
