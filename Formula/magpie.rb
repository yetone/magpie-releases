class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2533/magpie-cli-darwin-arm64"
      sha256 "0c1b1fc0726dcbc9d23b06bded677065d6563744dac1cff5dc0c4efe35d70778"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2533/magpie-cli-darwin-amd64"
      sha256 "ac6048f5ccff35605f9c0d649274786bcbfb5d8d9c9f7ff5e3e631598cc47bef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2533/magpie-cli-linux-arm64"
      sha256 "113db2446d4da45359aa1991fe26c38c62fe7910610eb7b1f153e72fd6b42c8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2533/magpie-cli-linux-amd64"
      sha256 "42c3bc8704e2020e996f59edbd298b3eee4eaef212a8f67a8433144a16c9de91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
