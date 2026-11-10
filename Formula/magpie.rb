class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3655/magpie-cli-darwin-arm64"
      sha256 "48e32a61d588c73270fce20471ea1c533090514c79cbefd604de8e442573c780"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3655/magpie-cli-darwin-amd64"
      sha256 "f9b93ca5ec4ac8a807197241e59064989fa9e5eb551e24533ac898ce24e97ce0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3655/magpie-cli-linux-arm64"
      sha256 "d76b1e171e68fc28e2a6d0a17c128989a34b7f9bfc4c2af6248cf55bf2269e7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3655/magpie-cli-linux-amd64"
      sha256 "230f046f93dc692ca54b60c45d6d1fbaa3c855a14ed2a357a8ecda2cb0d1cc90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
