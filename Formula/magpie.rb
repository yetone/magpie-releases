class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4277/magpie-cli-darwin-arm64"
      sha256 "392a6ea4eada638d0a5bc0c9516f54001996e38ee873e5c1f20d2d7fe9a05168"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4277/magpie-cli-darwin-amd64"
      sha256 "e0ec6254d37af822f949ae3742235c0a74e877ef3edd96e70f28a0ff32b5ac35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4277/magpie-cli-linux-arm64"
      sha256 "731cc40f670ac78e1b69106d7df78e1bf36c65d4c63fe2564852ebf5bd1e8dc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4277/magpie-cli-linux-amd64"
      sha256 "3fff8606fb5a0869644c8d15a3883d807d3ad8e8679e6f5c37a19ae4b6485a22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
