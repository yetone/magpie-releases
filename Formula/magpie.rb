class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3241/magpie-cli-darwin-arm64"
      sha256 "f227951d166e28fe257751b4b61052db427c44f77cc017dbcdfaaacf88cfb83e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3241/magpie-cli-darwin-amd64"
      sha256 "3191ea298078294601220e3254cb48293c8a111b477b2a0c81e62c473213fc6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3241/magpie-cli-linux-arm64"
      sha256 "18dda6edce3da98bcdec6a039173602e75f550fd2a387b262908af0c2d544778"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3241/magpie-cli-linux-amd64"
      sha256 "040fc852bd72dd6f9243bb809b4a1ba7fd46532a33d7ccaaf9fcfac2831f6570"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
