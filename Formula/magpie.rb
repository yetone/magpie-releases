class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4622/magpie-cli-darwin-arm64"
      sha256 "8bae7779bd3827a4faec8d33f00ce0be5e4d12987b9074d82b447d6d41b8496f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4622/magpie-cli-darwin-amd64"
      sha256 "977c1614af551651c3bea8d42f842d42f9cd90cf43d3d484d23b0447e6a4fc75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4622/magpie-cli-linux-arm64"
      sha256 "4dc659002d9a6603d174bff6fbd31b2618d1245106506258b12f26f69c7a85ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4622/magpie-cli-linux-amd64"
      sha256 "06ad40424777b233ca96a031c1c83e533ca10945e5519b8709d118f42c14ca9d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
