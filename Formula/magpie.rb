class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2680/magpie-cli-darwin-arm64"
      sha256 "27248755089443b2e594e7b08874bc347d91a59f5b362dfca98b6f8eab10eeb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2680/magpie-cli-darwin-amd64"
      sha256 "243dff64e0d46b1fa37c3a955bb676422e94d35310b2f42d03db466a1f24c633"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2680/magpie-cli-linux-arm64"
      sha256 "cd79a4dec6a18182975d3c76ae47d688b6bb5aea2a440da07a12d810b36216df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2680/magpie-cli-linux-amd64"
      sha256 "ab5814f10324a31db663eb34b990d1dcc663d69cd1b12bf665e92ab304ee6524"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
