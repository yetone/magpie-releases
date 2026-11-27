class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4976/magpie-cli-darwin-arm64"
      sha256 "fc31c2ddd53548cd7ad6d54573bdc83d93ad4aa179223469722d386bd5e6fa32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4976/magpie-cli-darwin-amd64"
      sha256 "441f5e89340f5ba0e5e6a5a97f51fd570f643a3c98a9f1072e9023abe4d747d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4976/magpie-cli-linux-arm64"
      sha256 "79405a494c451a3aa6ece47bf7b2d60218563f8b76288a886eda8f6ec2faf6b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4976/magpie-cli-linux-amd64"
      sha256 "ccc6822d377547fceaa2eeb59e871e7511f20a4ec0c90776212c6908cc2195ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
