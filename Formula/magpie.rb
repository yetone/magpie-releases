class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3252/magpie-cli-darwin-arm64"
      sha256 "96a5c5135c2e9c04a55314e97dd93b0c9584e8e3917e99c51014b16bd5ed43e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3252/magpie-cli-darwin-amd64"
      sha256 "f7c006aaa56632f00ba4ee046acc72ec7113bace4225d629f842a1aee55cede1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3252/magpie-cli-linux-arm64"
      sha256 "485979ea16f63bee4831f574237d48026822d88596aa02ea3d20d47e44c4691a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3252/magpie-cli-linux-amd64"
      sha256 "34257289cbf2237b4eb9eba0552ab562c407ed8282b0750a43cfaccd98f7d580"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
