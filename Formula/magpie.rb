class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2352/magpie-cli-darwin-arm64"
      sha256 "e731e30402063c84ef328db180e2fa5af320b50b2f97fbb3e9ce4fd1e2dbe098"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2352/magpie-cli-darwin-amd64"
      sha256 "4a49c5bfdcb4518ac1185127cde2f7657ce65303b7ee113390e36387e29cf78e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2352/magpie-cli-linux-arm64"
      sha256 "4ab4278cf1de33340277023e62c7d916b9cfa8fcbc83957745ddaec1db8f0b4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2352/magpie-cli-linux-amd64"
      sha256 "bcc1e1c9085d108de4d9614c7769d46aecfeef49926f1127bc384b231bb4b756"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
