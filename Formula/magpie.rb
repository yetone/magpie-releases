class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.919/magpie-cli-darwin-arm64"
      sha256 "b60a979f3e7b7ca409b74ad83c37e983cbbd4af560a31b7c90745a949ba6b1ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.919/magpie-cli-darwin-amd64"
      sha256 "4d620bb32dc7d04023ab07b3b75bb1dbbb69b5bc352b605b89047c319203a622"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.919/magpie-cli-linux-arm64"
      sha256 "b8a016f319466cb4ab0fcb0154540a01e9e934519ecc553fad318d49922b16d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.919/magpie-cli-linux-amd64"
      sha256 "904371b782ac443545474a7195aba5490f97229c2754108646a1fe95bb5047fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
