class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4539/magpie-cli-darwin-arm64"
      sha256 "fd2ceaea4a4e5a16c44dc44ef178e04ac4490ee3063dcad4cb0f2845f322d447"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4539/magpie-cli-darwin-amd64"
      sha256 "805d09d990f649f94d324e61aadc1306590ff9114e322b8dc1c6dd590d1505d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4539/magpie-cli-linux-arm64"
      sha256 "602672abc42316b440a5b4680c813dad58eca3dd62193ede88163e0b16c159f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4539/magpie-cli-linux-amd64"
      sha256 "2e97ffed7ace0339a5da9bfab72fec4d50c470cb71b506451d09358171a9a7d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
