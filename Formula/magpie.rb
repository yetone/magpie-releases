class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4202/magpie-cli-darwin-arm64"
      sha256 "345631e63cf1c883d3ee77d5eb41310d9c7d92ed8c9f24005b1aa25966a6c812"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4202/magpie-cli-darwin-amd64"
      sha256 "f4400183a23604cd08082823611dd92af5c056c92edd262c53569d0a5e75ecd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4202/magpie-cli-linux-arm64"
      sha256 "ec21cb10852beb14f35a24e7ed8f5782e45e8b9d68729f9414f4e24977ffe1c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4202/magpie-cli-linux-amd64"
      sha256 "e69c2368f51adf37d9901826be1611234cb1290e75fec2ea9b9bd8df5596b6ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
