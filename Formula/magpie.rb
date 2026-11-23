class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4704/magpie-cli-darwin-arm64"
      sha256 "74bbb2dd86326b71596a9bc0fc811a9e50baec6cedfae1479bafb1bae9a12cdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4704/magpie-cli-darwin-amd64"
      sha256 "055dace99ced258dc9bd433e809203c30dac8eaef0f50b9f88acaafbc52cb9bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4704/magpie-cli-linux-arm64"
      sha256 "dfee45b23b4823afb120d1cca944ac9a5f8a383678d0b6e6316f4d65fe508316"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4704/magpie-cli-linux-amd64"
      sha256 "abc7f2328ce4830a252e68bf395c6cdba5bb350ca8bbcf579ce82644b3566c2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
