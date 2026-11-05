class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3021/magpie-cli-darwin-arm64"
      sha256 "04419546670b1b6185f86b370295005dfad7abed25fdec8ec873456a5edde912"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3021/magpie-cli-darwin-amd64"
      sha256 "65cdff6066e40a37b12cc14316c7a55c6f1b5da8956b01d9dc8b897914c76574"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3021/magpie-cli-linux-arm64"
      sha256 "0a494ded013c037aa324ffe4fa7525eddb19ddf5c2a67539ea54e1d0f9b483cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3021/magpie-cli-linux-amd64"
      sha256 "d134d3ea50616a7763a17869776f64ef889f0fcf229f998799f069ce5a0fb1a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
