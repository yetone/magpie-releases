class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2458/magpie-cli-darwin-arm64"
      sha256 "808145b732c78272d6e72eec8465dab399e606c5fcd1e8e49965356faea80155"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2458/magpie-cli-darwin-amd64"
      sha256 "f45131824a82e16d62aff8b6d44ac9f680c4da172fbc9c6f9a02d10a4d3a6d95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2458/magpie-cli-linux-arm64"
      sha256 "0c25eaa49ed89cfe8090b01e6ebb48807d9b68d1f87907d61ea06943595bde3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2458/magpie-cli-linux-amd64"
      sha256 "4e25adaa5b1783d1e6c7b5c7a1ba6b0015c45504e0a2f0f9fc4d3202b88a0eb5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
