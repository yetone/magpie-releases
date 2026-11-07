class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3277/magpie-cli-darwin-arm64"
      sha256 "b6d7747bc4ad7be43bf842e3b876255365c384007286866097a426057179ac13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3277/magpie-cli-darwin-amd64"
      sha256 "0e7141f832e4f2a884e5bbee68fa1dd1dcc7760231b3e22103deb5c9a09d9051"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3277/magpie-cli-linux-arm64"
      sha256 "6a1eaff64e61bae71d5ac8d7fd8bc9c4b6adf791be6c86aee270dd9e13e36bfc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3277/magpie-cli-linux-amd64"
      sha256 "0b01e495fc72a5747d01c515a762219888ce2c28807dcb511aa14d77d04398e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
