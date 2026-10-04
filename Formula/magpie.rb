class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.917/magpie-cli-darwin-arm64"
      sha256 "9874aea05ce8f0dfc79851f5a0e96828bc249248272e7628058b042a8ff06db1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.917/magpie-cli-darwin-amd64"
      sha256 "ab06317cf0b0629d80285e4c993465361ca2e4594929b9c3b64e0de2e9b73e10"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.917/magpie-cli-linux-arm64"
      sha256 "5bf42d692e9c7f244b4772ce32f759e1b8095bd2e360823b9a8f1a96080c37f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.917/magpie-cli-linux-amd64"
      sha256 "ccabfa341d944c636deb5bfb02c064c33d108fe987293f2e6a2988c6c099d8b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
