class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4346/magpie-cli-darwin-arm64"
      sha256 "7b29db70bc3f676d7bdb69a0f13b6e8c658dbc98623c3eb539ddaff29ff6f394"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4346/magpie-cli-darwin-amd64"
      sha256 "8d3e535a7faf36d4b0250ad6b026f4744b9b52c08b6a6a7ee1f2f64e1b5f2c95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4346/magpie-cli-linux-arm64"
      sha256 "5a4ac1e5c5d92d67def078d5ef705c7e8bbdbcc28d9ca21c4af351648e2c95fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4346/magpie-cli-linux-amd64"
      sha256 "c7176d3f707a8cf19210f10c5446597b7c77eb92790c85bef22ff4c34f0b45f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
