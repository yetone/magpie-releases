class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4326/magpie-cli-darwin-arm64"
      sha256 "c5db59720cad7b6482de9b83983c348ca5bb4956906d84ee1c00772343194765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4326/magpie-cli-darwin-amd64"
      sha256 "e8cc48af6541716e0d52784f9bd9b45d1c0642ad54f6df097ef19ecdaa4884a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4326/magpie-cli-linux-arm64"
      sha256 "3f4ae26f96a7961b6e533ee88dd69be8998d9669e798c0e099f1d27d12812c40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4326/magpie-cli-linux-amd64"
      sha256 "9c29c0c0af90db5b046e9adb93a8e9e19e338bdb7f7421ab06294f5babeda772"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
