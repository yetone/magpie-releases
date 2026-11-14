class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4099/magpie-cli-darwin-arm64"
      sha256 "dcfa422f2c3171b4b71af86a907ee53eec953f58e6dc6477c8915ed9c62ed8f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4099/magpie-cli-darwin-amd64"
      sha256 "297113ed6c62fce85cbeb93415235be64269680d9f8a3cddaa051a710660b700"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4099/magpie-cli-linux-arm64"
      sha256 "36d483755cebc9f858a2645d573e143efc8469a1beead49ae11ecb7e766bc759"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4099/magpie-cli-linux-amd64"
      sha256 "5c6c8702e5ce3118031273daab769d117223185e56c3ad2218a469dde4ce2dbf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
