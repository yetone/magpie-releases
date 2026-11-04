class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2950/magpie-cli-darwin-arm64"
      sha256 "dcc4befdb6d91214a69ca4e3cd2e3b56495f1560ae13c0b48ed44fe334b0ff90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2950/magpie-cli-darwin-amd64"
      sha256 "c7886502e5085f18cb9ad8daa68f5bf5780cb09ace2b5d2250b2b3c3cc5f2018"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2950/magpie-cli-linux-arm64"
      sha256 "4fbc6fd25191e9e21f0f68e6ae782b6e60f209eb50ab0da04c374863aec8af1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2950/magpie-cli-linux-amd64"
      sha256 "3a51d4ea44bbeda6d7fc2b1230468f7dcfd3e48fd069ea587682da99ddaf8b87"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
