class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4758/magpie-cli-darwin-arm64"
      sha256 "d27208da9a622dc8ecb9938b00e6786e2f15a931939dca36042349b8a9569054"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4758/magpie-cli-darwin-amd64"
      sha256 "98dd3bdc059ce7b7379f5cc917bbb23d9597b4b1fc8b655e3aa533960b40f68b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4758/magpie-cli-linux-arm64"
      sha256 "33bbb6697f6c6f6b81bb430f7c395b36bdbd204de4202d2d5b6b1ecfedc71129"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4758/magpie-cli-linux-amd64"
      sha256 "f5a158ad8986e3504b9be9a501dd61ddb69df40dc3cff3a2cc694ca70f6c0890"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
