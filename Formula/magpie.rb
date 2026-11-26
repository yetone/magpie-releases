class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4857/magpie-cli-darwin-arm64"
      sha256 "560fbfb07d6c55e7a16ea5de72a29aef2c026c86954873f738dacbf9e54505b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4857/magpie-cli-darwin-amd64"
      sha256 "0b4dfbac8714f32f6e8b45ab3265adc962beb4cb85781b7719e33ff294a85901"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4857/magpie-cli-linux-arm64"
      sha256 "bf88d6e9520b453ca2141fa433a1f0c397e1be100a2370e010f9fc359cb4ca61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4857/magpie-cli-linux-amd64"
      sha256 "e119fc61d415be7785c10ae2328e86f5237b99cdb2b30bc8183c3d8616946789"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
