class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.944/magpie-cli-darwin-arm64"
      sha256 "acc72fd5861ebe4558e63fe3382e6297813c4f12e1dbfe231c3cc4c3540a346a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.944/magpie-cli-darwin-amd64"
      sha256 "ad334d4da8034f9831482327c868e7cbf4d24513277084b0765aada11e4e8b3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.944/magpie-cli-linux-arm64"
      sha256 "f2f5b9b53d4f33f50631a96a50ea708df776b14a76bc41d4fae8ead4c2d24444"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.944/magpie-cli-linux-amd64"
      sha256 "85517014d1f6c9655eb9077af44ec97252d89722a1a7c28ef44751618e7b30b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
