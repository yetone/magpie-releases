class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1121/magpie-cli-darwin-arm64"
      sha256 "20a8f878fb5f74d0f6949c26cbf10d632b94a3904c41000209526ff91535c5b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1121/magpie-cli-darwin-amd64"
      sha256 "5069370d535aa2cb3aa349f648d5f7341de9ad23997515c70a731e62efdcf4eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1121/magpie-cli-linux-arm64"
      sha256 "d77ac60d3818ab07718b81ecb25449cfd16951b7ccc51a66973bc9110fd62e32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1121/magpie-cli-linux-amd64"
      sha256 "59dfff6c902debcefca66570eb8a304494f20e1b95674b0a0d4eaaacaf681dfd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
