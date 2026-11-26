class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4869/magpie-cli-darwin-arm64"
      sha256 "a85c42bf4c9d9705ae607ea797b1ac0163d5b29c09920046c6477b6c52689886"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4869/magpie-cli-darwin-amd64"
      sha256 "9eb49e6958af87498cb6f6474126174a3a33285fef71c135ab778129baa48dca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4869/magpie-cli-linux-arm64"
      sha256 "18be114f76e80c75a8efec1e0c71c6f61396b449980e6c0ffc1aa4bebdadc35d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4869/magpie-cli-linux-amd64"
      sha256 "5e728e6c92d4471ff7dfa6e185d654db967f7fa0c92025bfd9c467f85f741db8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
