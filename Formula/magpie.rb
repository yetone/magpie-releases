class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3206/magpie-cli-darwin-arm64"
      sha256 "1730d093c7580b42fd102ef60d91c8be68f007517bc9c5be31788731b145c408"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3206/magpie-cli-darwin-amd64"
      sha256 "7f4ac21587f160db185064a28fa6efb49a911fa15a8eef0d622170ee434ab054"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3206/magpie-cli-linux-arm64"
      sha256 "fef75a47492f37e6d7471493a474516000dbee24bee635de14a689e29cc11215"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3206/magpie-cli-linux-amd64"
      sha256 "d16466984d20aa86b542723f80e0ccd59dbfb2f9c47abff1f32f351f7c8eada3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
