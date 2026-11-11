class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3715/magpie-cli-darwin-arm64"
      sha256 "7afc061837a2eec3d64565d1cc7dda8330fa815eb1a207fde34b5a37fba186d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3715/magpie-cli-darwin-amd64"
      sha256 "1f42bf8f85f8d7e6f218abd425e1f242e4b4fb5b0492c1e01c2f6d1b5fb6f24a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3715/magpie-cli-linux-arm64"
      sha256 "e3880386f1775bc692c7808fbbe4ae7adc1db7df942db3dc59f1080a1595f8ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3715/magpie-cli-linux-amd64"
      sha256 "b728475eb2014129f23e28d4cd98206ef3d9fc632e2a8fc12392cd71cc02d3dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
