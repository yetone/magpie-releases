class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2793/magpie-cli-darwin-arm64"
      sha256 "85fb3d5d8ea6f5a848a3babac228c5372abcdb3da46ea70b3dd2c51b2c727955"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2793/magpie-cli-darwin-amd64"
      sha256 "07192d6b098acee20c416677178559a95fb2fa70a44ec9d3fbf620e8a59aa8ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2793/magpie-cli-linux-arm64"
      sha256 "bee650405a246cf69bef68f124fb243a3428573f90b0459d9550bfe468e58f9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2793/magpie-cli-linux-amd64"
      sha256 "7f6715b322d514fd9b46d0b99b255e6ed3b1949cf01681ef78f3e1da70bf10c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
