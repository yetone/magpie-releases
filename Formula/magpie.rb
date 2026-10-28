class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1901/magpie-cli-darwin-arm64"
      sha256 "10e903019be465f2874cb4730ebedaf0b108d3d4ba3b2b6903052362743af79c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1901/magpie-cli-darwin-amd64"
      sha256 "fb459f7443061e8b8018c49e6d8d9cc889a5fcddab3b0c263a89a641c106f264"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1901/magpie-cli-linux-arm64"
      sha256 "661f0621856e5c1fb62069d1648bf5321bfa9c321416c91c721aa5d60e99f798"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1901/magpie-cli-linux-amd64"
      sha256 "528a23c9e07401a584c7627b2cfedcc1458a352f13ee41ddbc918dbf35636107"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
