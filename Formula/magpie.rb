class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4332/magpie-cli-darwin-arm64"
      sha256 "01545ef06182e22275f06aa0390dbbc4541f0cd3d8b27f687cfc0a8a45fd15ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4332/magpie-cli-darwin-amd64"
      sha256 "560bbdf8c72f52b9a94776f4a3acfde09c03a77f109f2783ea24d7589746b562"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4332/magpie-cli-linux-arm64"
      sha256 "8af4b3497294cc0b12167efc5f0190a5b9858f683ec144ffce6bbb054e61321c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4332/magpie-cli-linux-amd64"
      sha256 "e8373e03c7b7a150bb98797f3e15a3a9aa5db33a2d1bd810ce60dbd95093b27f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
