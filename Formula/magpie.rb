class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2856/magpie-cli-darwin-arm64"
      sha256 "17da8bcbf03e32ac1bb3c0ae6641b8dcbc360575b16eff3b06f11961400f9e38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2856/magpie-cli-darwin-amd64"
      sha256 "05e6e20d7dac3d97f843a14b0770f22468834e089c3b6ba8be5188ecf724e2c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2856/magpie-cli-linux-arm64"
      sha256 "fc9955eb89e2d9694c96f1ab18aa808089f6bd7f14aa5047fd73ce5e5738dbfd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2856/magpie-cli-linux-amd64"
      sha256 "e23d096ca402355b975d40aed594b8ade134f82adc313260f82600343184c234"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
