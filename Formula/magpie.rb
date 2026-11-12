class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3876/magpie-cli-darwin-arm64"
      sha256 "47644028962c681ecf70d42e204e549c4c388029ef95fe8eed2a65eed9606c62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3876/magpie-cli-darwin-amd64"
      sha256 "cf2e79a89642be533c059eb0e6dd3a36b0ae2fd2685948e4931cc26ff9967a8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3876/magpie-cli-linux-arm64"
      sha256 "57897a7791780e59e8436d011cf2d998ba8db27ebfefef514f06ee3f6270e6c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3876/magpie-cli-linux-amd64"
      sha256 "c84f7ba18344d67a6a004bca513bcc89cbdf7e0a6f8c26f98e995935d39f3f3d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
