class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2058/magpie-cli-darwin-arm64"
      sha256 "aca772890acd84b9c0f8a37592d2db871ec438511d48978afedb09e5564ff1af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2058/magpie-cli-darwin-amd64"
      sha256 "9751be5558b35e3da3051412cc51dad75607451ba9cf4ac8f974500b15cc072d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2058/magpie-cli-linux-arm64"
      sha256 "c8db0579ed1800e7a2de903eb4035f5ecde65ace464f6c54a4afb7c78545790d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2058/magpie-cli-linux-amd64"
      sha256 "732db276d8d85d8660de4a69388f002b655a2119dd60e3bbdfa25c0e7a847e31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
