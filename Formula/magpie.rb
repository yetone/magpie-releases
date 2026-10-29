class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2068/magpie-cli-darwin-arm64"
      sha256 "657a6406587ce3f396f19869a2825b2df21baade851be921d9f76cf608f62815"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2068/magpie-cli-darwin-amd64"
      sha256 "cab96967f35be3c403d4d9e82386e8ed4593fe5e44e1d48b8a6dba26899f6fd2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2068/magpie-cli-linux-arm64"
      sha256 "e123032903fa9728a6143d4e89ba77793463fb116542dc49f18aa568591b36c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2068/magpie-cli-linux-amd64"
      sha256 "4cfa6997dca4b7e41a2897f910148332d08bb3cb933276fc60ee7ec51742614d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
