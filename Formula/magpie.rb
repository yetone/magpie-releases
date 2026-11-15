class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4227/magpie-cli-darwin-arm64"
      sha256 "876e9048a1a1b1608b256b6370319b92665ec32f80e8f5a4396b31d1e6535abc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4227/magpie-cli-darwin-amd64"
      sha256 "d5156118d2549d5ef49995e046e791035534c977579477a03082bc8c1251a13c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4227/magpie-cli-linux-arm64"
      sha256 "a2101e1105c4188dbdc12a01a496308a60cb5d9252aca9ae66dc45c085e6a827"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4227/magpie-cli-linux-amd64"
      sha256 "43594a739d25daaba900f61fbbf337e42b36585e6338e301aab113dd600ae69d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
