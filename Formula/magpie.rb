class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1970/magpie-cli-darwin-arm64"
      sha256 "14268bea4b070feb5563247b36746d9fa00094bd96c9aa5219222915c9222600"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1970/magpie-cli-darwin-amd64"
      sha256 "7cd8e28f58bd5d13f7ae0022de15c4278acd8021f0be265c541814d5b5111873"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1970/magpie-cli-linux-arm64"
      sha256 "e29905c2d1e2e2341f84157ff959ef77cf19eb453e9e6841ba1364cc71965cb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1970/magpie-cli-linux-amd64"
      sha256 "8f384e5d5263ddaee38eb44e6b3802cd9283dcc211941f9d726b4f1cb370bb6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
