class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3597/magpie-cli-darwin-arm64"
      sha256 "e8d854aac85d26c89a903fbe6a7ff3f2405c6004032668a390ebe31134f68002"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3597/magpie-cli-darwin-amd64"
      sha256 "1eeac7ce564544968d383d45939f2e073e832988b05f3dfbf196bea740b26708"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3597/magpie-cli-linux-arm64"
      sha256 "2aec9cf6c723bc0203b391a8e28f42107d3ad757d3b0d751163b41947c57db23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3597/magpie-cli-linux-amd64"
      sha256 "85757b8040f4cc0afcb2dc53b8410ead4b57d7e1afe9f357a076445943e5b375"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
