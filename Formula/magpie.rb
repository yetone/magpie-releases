class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4843/magpie-cli-darwin-arm64"
      sha256 "f466b14723c9c754e148ac3626b4e31b66925a0cc2fd777035c2974a864cab4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4843/magpie-cli-darwin-amd64"
      sha256 "35d5fc0fdddcbb122bb60e8ddf5f34ca5e1fc0d95e6c329f67e36549b6b7eefe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4843/magpie-cli-linux-arm64"
      sha256 "8c4606d00e2e47452385e8105a3898f13dc11f021beca65b72302ebd5a235125"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4843/magpie-cli-linux-amd64"
      sha256 "6bb59f16a2a94cd551ce30096a7ff7f96936ef0c2425dac4f2835b82feec7038"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
