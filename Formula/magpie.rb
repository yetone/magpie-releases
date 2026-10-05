class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.990/magpie-cli-darwin-arm64"
      sha256 "51fc91cb510cbda0a9a76c65e0d8871b26e0a2f09d44c5e2dac778d2ae2922b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.990/magpie-cli-darwin-amd64"
      sha256 "d266cf69e7fe39a659665e5f4b1c499eaf105270bc37ca33ab166697cbfa0839"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.990/magpie-cli-linux-arm64"
      sha256 "55fc8f0a9616d2519ef3d125034741e939ff3a6b1ea4060f589081976e59c2d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.990/magpie-cli-linux-amd64"
      sha256 "f2c77f1d8a4c7395b90d5bbdacda0ea349f143bcd6ab6e24055d48348e17d463"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
