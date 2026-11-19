class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4558/magpie-cli-darwin-arm64"
      sha256 "0b8c2d82538b6711962b605b1de91b9dec65aa57ce17d2bf0810261b66c25826"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4558/magpie-cli-darwin-amd64"
      sha256 "2a27d4d8db1ba018dd7155cb747471144036f6fbf600f3aa2580a01af43236aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4558/magpie-cli-linux-arm64"
      sha256 "d58142a2fc56ab422c2bff38721f5631124c141424615e1fac7fe35d6cc93abc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4558/magpie-cli-linux-amd64"
      sha256 "138693371c4b126400d0c649aaf6e4b1510d2a87b4f20179034af9ae53822aac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
