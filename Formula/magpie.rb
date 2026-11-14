class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4143/magpie-cli-darwin-arm64"
      sha256 "ddd37517a2129356084c1bda9114213de3dec1d457d71a4ee78fb3f85d253f77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4143/magpie-cli-darwin-amd64"
      sha256 "71c33ab0d2ab532f68472267aa9bdec4431b0d0cc53d7e05281d03d5a174a7db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4143/magpie-cli-linux-arm64"
      sha256 "71740ad3617106c498bd86c4aa9780421b9e2327fcc50664c52d3565937322af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4143/magpie-cli-linux-amd64"
      sha256 "027b016e3848642cf20273e23026136980731d4077a847fb7147626326db124d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
