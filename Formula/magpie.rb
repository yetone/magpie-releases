class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3355/magpie-cli-darwin-arm64"
      sha256 "a572d55d76fab26c8b333b0db9848b87c55a24056c217e800a401f17f7f7e062"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3355/magpie-cli-darwin-amd64"
      sha256 "cc3716e6015b5bc6794b90c27feec741dc7fecb10b58ece64a35fa3d3e0e7c25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3355/magpie-cli-linux-arm64"
      sha256 "a009594c77247c2033ccc66808952635e53ae1154cf867f161804759d7826e2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3355/magpie-cli-linux-amd64"
      sha256 "be20de577c0736446bdd8e87bc2b50b823c552a5426dffcc22ee1e912afa75a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
