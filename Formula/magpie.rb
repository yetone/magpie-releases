class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2011/magpie-cli-darwin-arm64"
      sha256 "852d96ec394aafce41988ffca2fb2be1fe7f16bc106f782f669fcde9d2d63052"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2011/magpie-cli-darwin-amd64"
      sha256 "bb5a99d42a7d61c894eb879d848e48abec7b3712de8d397cb9ff01e1ec1be553"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2011/magpie-cli-linux-arm64"
      sha256 "16b0adc928a10f3d94e7b47766ff987c92d0391542b33e5009b25ab7ccdef3b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2011/magpie-cli-linux-amd64"
      sha256 "35ce4a27ac0c0981acb93601b10b7ff4df7ed3a442e0b67f8ca769c40104be82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
