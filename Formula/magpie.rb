class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3342/magpie-cli-darwin-arm64"
      sha256 "1cfde5e273c2288da6398bada2cd53e9e0c8adc01b07b89b5f147bb7c7a4d982"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3342/magpie-cli-darwin-amd64"
      sha256 "3430eb3b7ec3c918af42b82ba52d9a8ee78a8c692c22a51bc431e514049224fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3342/magpie-cli-linux-arm64"
      sha256 "7f0450481837215bfdc60ca739165d4f7a014ccef39e7f89f562b080d1c48048"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3342/magpie-cli-linux-amd64"
      sha256 "b1fc31682aaa99a0e5ee975c2c1318a9f83c1d1f6cda560103eceb75a6fef314"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
