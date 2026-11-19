class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4567/magpie-cli-darwin-arm64"
      sha256 "739c85987bf931c67b95bb199eca2d26ce4d180e21e78416d6000574acc70e82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4567/magpie-cli-darwin-amd64"
      sha256 "e1bcc7120fcc51f95a4b7762cf56809b0eb8b61d553162dea936959d5fdf4e6e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4567/magpie-cli-linux-arm64"
      sha256 "fc52f049d3edbc92546383d41253dbc13a46c7422012d535b9de81aeb642ad2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4567/magpie-cli-linux-amd64"
      sha256 "89c8d475598e33d854249f45706d545692b2c04cda6dcec84347f7a1ac5848bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
