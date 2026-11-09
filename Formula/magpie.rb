class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3406/magpie-cli-darwin-arm64"
      sha256 "a435a030d623124ef55fe35015ab677f668bbdf6529b4d8fc6954c319f25a94f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3406/magpie-cli-darwin-amd64"
      sha256 "e9620fca9f524fda9f40b25145c3411a184abdd67fe617ab5abe1a0935510e32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3406/magpie-cli-linux-arm64"
      sha256 "4942c6575bb820960c6033f1f50e1ff2b4ba2076fe3d07b4c5ebd5fcd3b619ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3406/magpie-cli-linux-amd64"
      sha256 "bd984631aea10445b1b7c488414d4ec3379777f178ad0f495af0204b0c41ac44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
