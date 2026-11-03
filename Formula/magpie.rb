class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2848/magpie-cli-darwin-arm64"
      sha256 "93a594e5791bea4a8ba2f43aac236d647988de6f4c105e5ab161dc7bea2ed2a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2848/magpie-cli-darwin-amd64"
      sha256 "c04d458070a04ae3c8507279c7d70e374c710672b64a70c286058b26dfda4170"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2848/magpie-cli-linux-arm64"
      sha256 "a0aa46c724d0a11f0efbd07ca09c9f5619a1fe37e96a4183eb1f04a6cd6cb2d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2848/magpie-cli-linux-amd64"
      sha256 "fe4c3f0f21ae6b6b4ae039135669878bd8e6663223f1d0e8dc5702b0a9039366"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
