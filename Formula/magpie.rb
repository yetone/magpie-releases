class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3888/magpie-cli-darwin-arm64"
      sha256 "77b81a29e8c6fcad84fd53c8422caaed21c67d488f4a7b1e3a447fe4c62354d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3888/magpie-cli-darwin-amd64"
      sha256 "42c114bbe6221ac2c844f4c4cb4ecc7582bc82f3cbe2f399906be02924cb24d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3888/magpie-cli-linux-arm64"
      sha256 "60c65a110a0b4d90f48a3e45147d0c948358f4c07185a560573708887dee0158"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3888/magpie-cli-linux-amd64"
      sha256 "08aa13d5747903fb70b96e65dd753d142e2dc82874ddfa3e4aefac7c6f1c67ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
