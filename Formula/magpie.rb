class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2633/magpie-cli-darwin-arm64"
      sha256 "cc49dad4a289cbf91748be793fa86d440ff0fda5f3ffb9767f330659f1e2bdb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2633/magpie-cli-darwin-amd64"
      sha256 "ff3fab00dae2293f05794a7125d9575ce736e09c81a64472b6f1cf23d5a5bd06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2633/magpie-cli-linux-arm64"
      sha256 "64fb3022de10d3c663e981caec075330dd22f0f9ba56e183171afae9f6d24687"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2633/magpie-cli-linux-amd64"
      sha256 "2b6c1e446cbd94e951ec5684dfa20dd255d8ac1df648909fc9b0f480ad08fb0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
