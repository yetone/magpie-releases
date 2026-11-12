class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3890/magpie-cli-darwin-arm64"
      sha256 "22de22276c4ac5015c97bdd13e7fe44c27e996aec6915142cedc249f698b2487"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3890/magpie-cli-darwin-amd64"
      sha256 "fa1a44b49f59514d17d43062b27919b05f1e1a3d4dd3fc6593fb625199f94065"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3890/magpie-cli-linux-arm64"
      sha256 "85de81bffe6e230217013a5035d3c1ad8664a643929a36f035fe4f0d2b431626"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3890/magpie-cli-linux-amd64"
      sha256 "246fc9def18f12da9257abd08b876c0f4f054f702d00cae261515582e4065249"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
