class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3385/magpie-cli-darwin-arm64"
      sha256 "192433c5438f63dc3c0f3b34efb0f47caac62560ba7955505529ed12ab4c09cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3385/magpie-cli-darwin-amd64"
      sha256 "0ab1199d2016c6e3cebdb28eca5da83a52d9b7a0a31bfb55b44c6ba358fc8857"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3385/magpie-cli-linux-arm64"
      sha256 "1f10a6665d18538af2cd5abfd8689cc3c970f20e9ac51ee8fca9006cbfc6f548"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3385/magpie-cli-linux-amd64"
      sha256 "919f2588dba608de3013a74ab0dcfad8fdfa1ab46bd86e44b5a21c38900e54af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
