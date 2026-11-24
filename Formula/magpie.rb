class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4740/magpie-cli-darwin-arm64"
      sha256 "7689473d71f88c8ef3ea5c7ddad5b93a196f978d077e97a877eba00c6db51c81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4740/magpie-cli-darwin-amd64"
      sha256 "8e55611d9d8e0cda185b0cc24a28f49bbb593bae75647148ad5263fcd450d4f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4740/magpie-cli-linux-arm64"
      sha256 "1711470d5e084247c0da8248c9ebfac380cf464c57e4e6ec26d0566316602bec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4740/magpie-cli-linux-amd64"
      sha256 "553d2f8459838708a981371e0f918e0e3a26cc10a350a22f1048161bcda0ee26"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
