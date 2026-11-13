class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4097/magpie-cli-darwin-arm64"
      sha256 "7db25ea8f6604793fd82bb8fbe9b216cd783f86fb16a5d80cadab2d2b8cd5b3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4097/magpie-cli-darwin-amd64"
      sha256 "fb773a194bae527d4f630c13cc5874e629410e6893a61bd98c407f0cd27de12a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4097/magpie-cli-linux-arm64"
      sha256 "d14e5226fffe3b450456260bf46deead794d2dee5f476e0d1220bf017975ecac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4097/magpie-cli-linux-amd64"
      sha256 "47466549eb1c7c4ae1c42733862f59e10e1e50edeb8d14d2b3bd6669b81cbea1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
