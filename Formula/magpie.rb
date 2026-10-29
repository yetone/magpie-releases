class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2022/magpie-cli-darwin-arm64"
      sha256 "a82d811de19fb5d7280154e534f3ebf3d5af33a060cbc387a509eb9cc53523d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2022/magpie-cli-darwin-amd64"
      sha256 "96b1ae27af02bf929347b7b635c4b692000930fa83bd3aecdd61ccd3f442701f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2022/magpie-cli-linux-arm64"
      sha256 "1e4144fedba0cd01f1b528fa9c0945b65ec6bb3fc6ed5ac695aec54df7a4da66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2022/magpie-cli-linux-amd64"
      sha256 "54de6167a8c1b31a54bf8c598f7554e26dc6887efe7c4aa3b0a80d60681aa1b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
