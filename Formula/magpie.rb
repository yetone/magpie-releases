class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3795/magpie-cli-darwin-arm64"
      sha256 "02faf96a3bf8041288077dcac6e7feb08749005dcd1bf7946f75d06c2762ebf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3795/magpie-cli-darwin-amd64"
      sha256 "8c0211d378ba0c0be744391935faa326031ab30ca84ca7b0f9db55fdce20ba44"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3795/magpie-cli-linux-arm64"
      sha256 "b34192cec396583a27382756607b7ca6b2370a19c0917b0246b3888d6e932dc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3795/magpie-cli-linux-amd64"
      sha256 "60a0310cdb22d34327eba3abfacb4c32243b58b354074813050495bb9396a3bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
