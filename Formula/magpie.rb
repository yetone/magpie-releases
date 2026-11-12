class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3839/magpie-cli-darwin-arm64"
      sha256 "df17f9f2a9408fe35349e24d1dfdc1be12788899c088dc7afa1d16a97c3a2aa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3839/magpie-cli-darwin-amd64"
      sha256 "c30f36cc996fdb67f7a42c91f46a2d32e6fdb514551d6ec9fdc4f50f21ff7361"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3839/magpie-cli-linux-arm64"
      sha256 "249c7dee3e3689f6f21cac5991fa401514eb22ca6db9ee485ea9b41711fabe60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3839/magpie-cli-linux-amd64"
      sha256 "2c444174de5938a51409d381c53d494b6b00ca049dbfdcaebf09cb98305dc329"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
