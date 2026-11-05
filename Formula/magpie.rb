class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3018/magpie-cli-darwin-arm64"
      sha256 "6d437dd30607fae00ecf9bd4a0b005b622e06142f697e86d7f42cb045c39827a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3018/magpie-cli-darwin-amd64"
      sha256 "af33ce44186c9c50b345506c9e97d19898c12dd216511198311d9922929d4d06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3018/magpie-cli-linux-arm64"
      sha256 "4398ef86bd8bfd78b110ad7adeef280e56fe389e9be4b3981b6db99d7f253fa4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3018/magpie-cli-linux-amd64"
      sha256 "7ddf19db7174014d0656d054fbb3f689f50dc72d5dd49aa1ae6f2bb398cbd49b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
