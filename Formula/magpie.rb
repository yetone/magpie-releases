class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1135/magpie-cli-darwin-arm64"
      sha256 "d6b43355245bfc537bcbe5c2d33a6e43dcbb2efa03f7162c913e0c6873d4c825"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1135/magpie-cli-darwin-amd64"
      sha256 "331c67344a7c029d07ae60ccdb9980464bc0f4f54c32d658d816887a215b6957"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1135/magpie-cli-linux-arm64"
      sha256 "79a2b589cd7a73958624817cba6dc5a1747a8a8b2fc5d9fd7693da55483612bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1135/magpie-cli-linux-amd64"
      sha256 "699df113dad3bb0de7ea7d92d7b7ced1fa159bbe21272544a11e2ae3cb66dff1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
