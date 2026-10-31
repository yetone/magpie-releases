class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2390/magpie-cli-darwin-arm64"
      sha256 "4627bbab126191399b5192f6f1e3b3c22e98bea8cb6db93f3dc55ba2bdc9f01a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2390/magpie-cli-darwin-amd64"
      sha256 "135da3bd04773c316010ae060e59f7a1c7cd246ed7bbc2e302693128bb96b7a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2390/magpie-cli-linux-arm64"
      sha256 "14ca9462f646ad5e693fa75998da6336c0818cca6fb7394fa9dc96274222bfa9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2390/magpie-cli-linux-amd64"
      sha256 "82f86fa8565901426aaba7a7af709985032f899c82e4d143481e0a83cfe3006e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
