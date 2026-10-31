class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2456/magpie-cli-darwin-arm64"
      sha256 "44eb91c4ebffa12892a6797d6c254eacd4b21a6bd66edbf7e77d24e258f6d430"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2456/magpie-cli-darwin-amd64"
      sha256 "8a195a1fc75faf56ed72c5a3947f7ca141e46477bce3184362e8fa2d70a203c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2456/magpie-cli-linux-arm64"
      sha256 "2fd22f06c1577804213baed2a4546e04a358013f1dfeda9491bec5b4c0337743"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2456/magpie-cli-linux-amd64"
      sha256 "2b24ae87ed1c0f04327acdf022bb0d9f19f7130858099dc1a62e5b3d1b83a3ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
