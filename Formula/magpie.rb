class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2057/magpie-cli-darwin-arm64"
      sha256 "9db21bc0610d9d61b34448381d97042244f2a7021e50275e04aca983f5b00ccb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2057/magpie-cli-darwin-amd64"
      sha256 "b35319f14418a0a13ade8d9c737716d2b0c499c828f1d763945a312cc9edfb81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2057/magpie-cli-linux-arm64"
      sha256 "babef052ef4c4737ac63b301ec38f731d6a7fd6d23940e080510f51a9d7c27d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2057/magpie-cli-linux-amd64"
      sha256 "30ffd163c415363ef4f82ab7dd766d9ec46e6ed9e58437cbd72dd6180540f12c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
