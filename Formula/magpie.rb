class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1091/magpie-cli-darwin-arm64"
      sha256 "c4f94c9bfa646332d0b95b8dc4c4ce2681a3b64493f366bac10102386820219f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1091/magpie-cli-darwin-amd64"
      sha256 "8d5ccad2b52c257a1dc1db2ea50cc1d60b98b5ea1165e9d9d3f3f22ef1a8fe01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1091/magpie-cli-linux-arm64"
      sha256 "a973da556e2363a1713b42fcff601b5f3bbe977d4727d522c2b790f72b2e2a15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1091/magpie-cli-linux-amd64"
      sha256 "03e1d42127281ab561fd2948d8783e7a96e94a59d2b5ab1a05b41c80943bb294"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
