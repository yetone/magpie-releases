class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4874/magpie-cli-darwin-arm64"
      sha256 "a5f189104ba7765fe4f680ffc6d92b43d48605bbb202946bef5e772893bcf426"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4874/magpie-cli-darwin-amd64"
      sha256 "d9f9f77afa3eaa140dc3490e31ec39313220ca0f53dff93bd404c321d435489e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4874/magpie-cli-linux-arm64"
      sha256 "9fb235aff5631adfaf3b3b742166bce60a4e819a879eef04f5589284eb8c6448"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4874/magpie-cli-linux-amd64"
      sha256 "b5fd55520e25f110fb4f18420358ede6ea9c2935f1e4f194ea64222fa5c1f2d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
