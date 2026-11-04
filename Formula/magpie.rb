class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2960/magpie-cli-darwin-arm64"
      sha256 "c6c044be3f639fa80dd7016bddca454f77b79add69cb9bf17e0c9912f0fc56b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2960/magpie-cli-darwin-amd64"
      sha256 "1ce49d122197219a4dfeb9df448e464b30885d2e5deb4db6c8a1785c2dcfccfb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2960/magpie-cli-linux-arm64"
      sha256 "3c6df9ff7e934340f7bb3fc6319fb4c284ca460ce850bbe794376053b041784b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2960/magpie-cli-linux-amd64"
      sha256 "f64725e7edffe223b517d1e47cacd424e76584feba127a7e90ced774ebfe54d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
