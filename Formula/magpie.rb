class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2895/magpie-cli-darwin-arm64"
      sha256 "dc1ec9ea07d5cc92153a1dc7b33a92aef75a67343d390c512c55b1fd2839d934"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2895/magpie-cli-darwin-amd64"
      sha256 "36ed3982fca6438bc7b62087960dc8d3d4fa6948b2f9569c8ac858ffd74903f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2895/magpie-cli-linux-arm64"
      sha256 "32bc258ccfd88a8fcd176e5b25de6c7bfa2768ebf3145dac02027ff4b99f80c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2895/magpie-cli-linux-amd64"
      sha256 "231a3a76d99c5c7b9f38a54c7418005c9f1c903906add5c01f8294c233b7bd2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
