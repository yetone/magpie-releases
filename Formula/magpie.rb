class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2384/magpie-cli-darwin-arm64"
      sha256 "e31f407792e147a9456c2259b44ce7720a9c65467a350fee597e093fef3a7ae7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2384/magpie-cli-darwin-amd64"
      sha256 "8aaa09fba4be3538fe9b340c24034df591e4c5608c7ce383ee2ea334163b9c3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2384/magpie-cli-linux-arm64"
      sha256 "66f33547a7d6a5f8ae0b1827a830373e345d04ea42a76ba93a03cfefe9435fd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2384/magpie-cli-linux-amd64"
      sha256 "506a7378ab61291feb0b2562c0a0f01975316dbe5c41066327edd6e574195344"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
