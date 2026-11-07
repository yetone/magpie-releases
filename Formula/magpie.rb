class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3214/magpie-cli-darwin-arm64"
      sha256 "41ca7627e3233ddb55dc240ec701af15ad005bc931eeabba6fac35049c4a2709"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3214/magpie-cli-darwin-amd64"
      sha256 "d80199ec0fd86aa62314ac937ea1fbcad822de913d3f224a9180c18381291efd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3214/magpie-cli-linux-arm64"
      sha256 "0a7d66575f541376e8ad0624a458f65703c4ab8e81dff40fa2263015c0af3e95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3214/magpie-cli-linux-amd64"
      sha256 "021801e3a0278950ded07f8eeea3dfa839dcf13153d70ed682f782817f59e313"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
