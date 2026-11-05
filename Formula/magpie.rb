class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3063/magpie-cli-darwin-arm64"
      sha256 "5d49d6e4aa901e91d93a8bbb2d27b2de37ffb4153df983d2a301dc37c79e751d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3063/magpie-cli-darwin-amd64"
      sha256 "fe67a1bb867003eba6342436f4fe80d03105eea4d6f2074e0a5f540043f6e2aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3063/magpie-cli-linux-arm64"
      sha256 "f6b0a350e557de27c3c46a36a35361ac3f04d421e748a0a50d372193038ba3f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3063/magpie-cli-linux-amd64"
      sha256 "eefd64639780e0345058de9fa2bf2133f87ffd23563ad4f885ae626f5aa949ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
