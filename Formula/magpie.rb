class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2603/magpie-cli-darwin-arm64"
      sha256 "ff826b302e4d3ba81821c6bc8fb7f7878c7519a312c911ee78a7bd78e6367653"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2603/magpie-cli-darwin-amd64"
      sha256 "6cafe425730b088c5ad75f88286b80de955820ca38299da0a6e2037af657a8de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2603/magpie-cli-linux-arm64"
      sha256 "ea5ec26e9f55017a3036ebd8369243f8af77c43fbfa3bd05db4bb994a3db1c95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2603/magpie-cli-linux-amd64"
      sha256 "beeef6d4f8422d0a2621e54527b093c497152a5305d32262b52d94e3b4f6396c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
