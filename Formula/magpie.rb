class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3905/magpie-cli-darwin-arm64"
      sha256 "22c69d76472f64699eabb09ea7669e20875b1a22b76cdbcc3108792c49aa7848"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3905/magpie-cli-darwin-amd64"
      sha256 "f7bbe78d77aefa78127736c4a4a979147bbe8ea9c174730b7fdfe5142c9a4f62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3905/magpie-cli-linux-arm64"
      sha256 "a40f8a0fa7cb5334010f05694a4fafd053d9e1344afc8cc791b375003f5441d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3905/magpie-cli-linux-amd64"
      sha256 "51574f98d2bb5968e8703c4fbbc2fd3e2e5477d5f838f6bb2a0e44d331b1a8fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
