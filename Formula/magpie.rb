class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4239/magpie-cli-darwin-arm64"
      sha256 "6b331482d472d2ba0795c40e1ae18f9940e394fc26ea5a8ef20eb97945504b69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4239/magpie-cli-darwin-amd64"
      sha256 "de91069bfa686ab1afc95e897ff1cee3c1d2122847b810fbea151d0454d519da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4239/magpie-cli-linux-arm64"
      sha256 "89836fd388669a1a80c7078dc84591439c71ea397f56ab23727dae8c87ad4ea5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4239/magpie-cli-linux-amd64"
      sha256 "3a1f8fad6d784e19ddc203a60e88dffc34b852671eb0b8c511e16faa97c949b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
