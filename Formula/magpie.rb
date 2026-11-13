class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4060/magpie-cli-darwin-arm64"
      sha256 "a2ce1369bdab07c4d568536b79665c6bf4171cfeb76e51f0a2b7dabbbd94a7ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4060/magpie-cli-darwin-amd64"
      sha256 "bf8f2739452935d640a061f2908d5553f59df367e105ff710cc4dae1e1744d99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4060/magpie-cli-linux-arm64"
      sha256 "60334f52715857c2de015ab4bc36b466f0dfc2c774436f20037b98d57e60459c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4060/magpie-cli-linux-amd64"
      sha256 "536c4621e7d9fd11ebdd20e582459d5a2ab6892f21de0c2a3b69e079d0c891ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
