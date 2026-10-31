class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2468/magpie-cli-darwin-arm64"
      sha256 "5ac267632b03fff9cb3153da921ef69856c4ab109afa9fee593c9b4b64afabe8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2468/magpie-cli-darwin-amd64"
      sha256 "a392edae56e37d27a1f5e9d0a4467bbe2d63156a754a062cdd5ccef1347635be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2468/magpie-cli-linux-arm64"
      sha256 "91c97663fe11eb5a19eeffc3de1f712ff12ba8c259885e785be71d1f6f3cfb1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2468/magpie-cli-linux-amd64"
      sha256 "d366cfd01040b708512fafd36ba3fd2040382a3435667fbff9f449d99e7b186c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
