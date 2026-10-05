class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1056/magpie-cli-darwin-arm64"
      sha256 "d887d275153dd72d7bed1f77937bf989a306257257202a1be46f11b56749752e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1056/magpie-cli-darwin-amd64"
      sha256 "d7545b86506911bf7f2708e19e2c98b2c0e0a878f87a7eff21a962582e43670a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1056/magpie-cli-linux-arm64"
      sha256 "7e7e5d85592ff96f6f6cff287bc6ca3116acaed7cfc58f74e3906020a7a08d9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1056/magpie-cli-linux-amd64"
      sha256 "73c8e19db0b6abc259e1ee7c07791878e2f622483ccf024bc1ea9f0fd5fcebc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
