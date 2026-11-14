class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4208/magpie-cli-darwin-arm64"
      sha256 "acc88e50388c59e452166f24fc969ef74c1406923e2e9961fb1722f0b6c60b1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4208/magpie-cli-darwin-amd64"
      sha256 "e428b287bc4528016c0131d73e37c066536047445585208c6f6411fe5720932a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4208/magpie-cli-linux-arm64"
      sha256 "7a97997450798110b6e37c7e887249d8cdcd66b5410629a313d50ec34f1870e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4208/magpie-cli-linux-amd64"
      sha256 "537563692cba1736b32575081e52045ca0f88c67537f3eb47ec5a215c0fb66d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
