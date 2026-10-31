class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2339/magpie-cli-darwin-arm64"
      sha256 "7d35882fb0432038f9cca78559082ab20ba01c3024c5c50d29026c7fe7ba4620"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2339/magpie-cli-darwin-amd64"
      sha256 "bffa302bb1ece2513715d6d78b7bb67dc1adcdb152933636c1aa9d5b289e8c69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2339/magpie-cli-linux-arm64"
      sha256 "f6624bdb7a0628d1acc47cd791ec3a871d80e9838441d252882baa41c86ddc76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2339/magpie-cli-linux-amd64"
      sha256 "8cfd20c67822fe49c3df2bd4cbafd8b0bbb9c8d9b8632ade219b39a1774614b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
