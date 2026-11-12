class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3945/magpie-cli-darwin-arm64"
      sha256 "4bfb15f261100b1a6d34f0cc2716fe90ea8eddd7b12c7673c38feec9d1b2bd8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3945/magpie-cli-darwin-amd64"
      sha256 "62d1c95388d8e869d9b7e37998823799f39642d34154e5e2c8cf30640c895295"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3945/magpie-cli-linux-arm64"
      sha256 "73f46d5718bda952e3dd7b2eb45dac164e6ef9c43749dfdcd3adb0109020c2c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3945/magpie-cli-linux-amd64"
      sha256 "f454f1c10913688a85c03f2488049dc3c01ccb261fb1e5eb5f39f6c2fd4c9530"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
