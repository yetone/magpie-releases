class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4504/magpie-cli-darwin-arm64"
      sha256 "fbf70111520404f9d34cc3e356217185611af91512e9b9046f5bd249c29a4e94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4504/magpie-cli-darwin-amd64"
      sha256 "4f42d2674c9888b9e291b3bcf4d693e4bed3fc4492b9e0d6bfd42cceca582340"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4504/magpie-cli-linux-arm64"
      sha256 "d8a7f39697bdc024d091601442eb1395202e7ce69278e659e8fc870ad38d22d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4504/magpie-cli-linux-amd64"
      sha256 "ee4d85d109412f44c6e2e85cee160dbe8ada5d379a1fd9503716541c1f3135a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
