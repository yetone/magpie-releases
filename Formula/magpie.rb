class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1168/magpie-cli-darwin-arm64"
      sha256 "23e6b63e9539a2411d81d45d2d34a2df6b8e34567fb4e1b356d3758dc53dd38c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1168/magpie-cli-darwin-amd64"
      sha256 "7f111d6498730fe7adb524a0bd6be92232f88eb3063974985e9cc98bf86b8ad4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1168/magpie-cli-linux-arm64"
      sha256 "9fba5bf1ebc1c59cf4d74f415ac411296324226cc6877057f22b241de1c806c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1168/magpie-cli-linux-amd64"
      sha256 "c593e9fcfcb3a206b7c25634bc6996abe8e4426a4dd2f5e0816ed18a454e5fe2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
