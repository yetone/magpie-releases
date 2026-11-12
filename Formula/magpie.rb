class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3832/magpie-cli-darwin-arm64"
      sha256 "06909874ed837fe9b3fd6e33d87d8eba4dd1d6e8fc3485812f81dd8374a1f87d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3832/magpie-cli-darwin-amd64"
      sha256 "74a4fa88c0c201a1ef200a9cbf3143756e0984672e375ddf8c12889b1737819b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3832/magpie-cli-linux-arm64"
      sha256 "c22300ca53dbc196e529bbbb61246089ce9f377a8bfcb024075538bc19b6aeb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3832/magpie-cli-linux-amd64"
      sha256 "4bc6778a8ab5b84389371030f971a2a65ba3c0f887d3f0fd8dc642206a905dce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
