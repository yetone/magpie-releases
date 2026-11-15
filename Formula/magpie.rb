class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4266/magpie-cli-darwin-arm64"
      sha256 "edade64084daf4ce045c9452f9fc4925fcaa3a8a1c3edda8096bd8a0d55b922b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4266/magpie-cli-darwin-amd64"
      sha256 "97225dcf60af406e81f934dfe79cdf566bfcb1c7b34936962803000d3cee40b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4266/magpie-cli-linux-arm64"
      sha256 "f1688b42b8fcf6efc290b5f3563985c46e21068bc7f27bfacdb9e6bc2a4f8f2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4266/magpie-cli-linux-amd64"
      sha256 "29c4b12c0f431d7aa3ec7a816763d189ddd31cc74eb85c3afb3036c17174f974"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
