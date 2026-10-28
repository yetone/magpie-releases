class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1876/magpie-cli-darwin-arm64"
      sha256 "053596da9f6fd5fc40eb21d8cf16b7e0d531cb1bd2ad383e521f66d39207da79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1876/magpie-cli-darwin-amd64"
      sha256 "7462e33febb03234981cfb687783d01f813f84d7605993d4a80711549ece2076"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1876/magpie-cli-linux-arm64"
      sha256 "f4b03cc9ac679dafddc022fa50e4046d55144f01be69d2bb51699ac44e19c20f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1876/magpie-cli-linux-amd64"
      sha256 "812afb0b1a03ad3a81fd867eb36e150c5df4ee25be4983b2b8dcf8c8bf853122"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
