class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3936/magpie-cli-darwin-arm64"
      sha256 "e8b399425a79e8ab54c02b19a86127b07b5bd0736f3fe2b8e68816292d7160df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3936/magpie-cli-darwin-amd64"
      sha256 "578a65ec1918f234e53af1b1889c1ce5aabf0a711deeda77cda034f64b442940"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3936/magpie-cli-linux-arm64"
      sha256 "4fc84c8760d199ef93414a93c137ade7c59cc70ad0b88deac63dbefbb11f1d3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3936/magpie-cli-linux-amd64"
      sha256 "59399f34a01607c34376516b4f6b053c7fe28753f355ee61e55b6054f0d3b266"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
