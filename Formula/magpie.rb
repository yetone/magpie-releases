class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1137/magpie-cli-darwin-arm64"
      sha256 "115bc571d3f9644d10eb1aa0d75fcbee2a1087c0fcf8db282633495b1bf21418"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1137/magpie-cli-darwin-amd64"
      sha256 "b1d603c43e2e5acfa0bd7b348ecdd64950890ef1063effb19b3d221e09cd6175"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1137/magpie-cli-linux-arm64"
      sha256 "e878096e8097c8e98d7d5937336c4f2678d17c23dbca38eb00bf50765995a90e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1137/magpie-cli-linux-amd64"
      sha256 "8ceeedff1c9dc52bc5f5418a82164d3177725b8f1b2625d4812f16dda664861c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
