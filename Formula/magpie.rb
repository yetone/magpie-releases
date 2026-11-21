class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4634/magpie-cli-darwin-arm64"
      sha256 "5a99b324fd8b21c5f7c9309eaa0421b6ae2b3fdc916b4bd959dd00f25454717b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4634/magpie-cli-darwin-amd64"
      sha256 "1f23e9d8764215817f74d865921274c5d5c874059f865b2bcebcf387bd0174fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4634/magpie-cli-linux-arm64"
      sha256 "e2f46d9873f586228418b3a67dcd177801b690acbfee151eab0ce6a83f90bd86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4634/magpie-cli-linux-amd64"
      sha256 "c49e8d7d8faa7c27d4924171d542e05aaa4fb4c443b979f3e45aeb8c6722fbf0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
