class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2173/magpie-cli-darwin-arm64"
      sha256 "d84c3b3b2e735ea55cbd5bfef9e14e854bce37bb068222accbf5fc00327499d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2173/magpie-cli-darwin-amd64"
      sha256 "b2f44c803de209c7c01594d35b8778fe1eb8ed3ae931fc3112d9cd3dd8513195"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2173/magpie-cli-linux-arm64"
      sha256 "f57ec4a4375a58b303b5819c71c91a388d7ca55d125ac003a00b9503adbedafb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2173/magpie-cli-linux-amd64"
      sha256 "fa62ce87fc1a213f9272d69ba6f18e1dd45a78e6c049a99926531ab751f4ef2b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
