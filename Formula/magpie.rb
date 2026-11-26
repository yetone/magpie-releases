class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4834/magpie-cli-darwin-arm64"
      sha256 "cde1f82a71b3a0fd59ac60a559886b7ee0af0f5c582e278ad5267c9e0f7358ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4834/magpie-cli-darwin-amd64"
      sha256 "0c30c9eec4f3ab10087868ba07d324651db90598b7adba927aff2bbd74fe78fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4834/magpie-cli-linux-arm64"
      sha256 "316e26b38798f45b458e871912b7820357a942e3553890ffa9bca082c011f0cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4834/magpie-cli-linux-amd64"
      sha256 "e87eb7949a87b6fc69012f4cb3b4c8ce5827cb1cb8d1f76dca76fb330d2bd847"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
