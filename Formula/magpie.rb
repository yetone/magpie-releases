class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3957/magpie-cli-darwin-arm64"
      sha256 "c45c07d0b7831364ca3efc2198a48c64fe825d4aed74ddbf373b0024ec2523ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3957/magpie-cli-darwin-amd64"
      sha256 "ea176d8497db904f7324dbf3e67e39f0d855f3828b9c8b186328eca48b59abaa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3957/magpie-cli-linux-arm64"
      sha256 "23d3c21561220f6e07bdddd2ae084d21bbd9bb1c3cbfce884901db856b2cea41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3957/magpie-cli-linux-amd64"
      sha256 "d54903bc5c093fef86a344129af0dd04a865098fca207da62fc16b3b5b9ab80b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
