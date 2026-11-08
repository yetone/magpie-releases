class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3327/magpie-cli-darwin-arm64"
      sha256 "419cdfd50d6aef416f3ea104592c2cd13949942a1eef2de52156324206e03df2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3327/magpie-cli-darwin-amd64"
      sha256 "990a2e80fb60d25b60ede7c3700893ca56824a9c9dc7daf10de4ce2ae755eda0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3327/magpie-cli-linux-arm64"
      sha256 "112b41090cb4c3a8c273a85179dd2b737ff481ad4f85bc4c18d5776b555abf42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3327/magpie-cli-linux-amd64"
      sha256 "da4104cf1ce5e5cd8debcdd33e974491e0d3fd74b4141e6e64157dc6011b8e74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
