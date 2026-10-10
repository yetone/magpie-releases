class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1150/magpie-cli-darwin-arm64"
      sha256 "1b414c4f1aa32614bfc451721e2d156452ec54fa80b281de360477942fc3063b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1150/magpie-cli-darwin-amd64"
      sha256 "0d3fe75782528fd9ed1d781a186eccefb998d4b2185219d8834f3c2e35725c25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1150/magpie-cli-linux-arm64"
      sha256 "31e3acf5457d9d21b89d173365ab0467b59663d4cc024507381070425f753d3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1150/magpie-cli-linux-amd64"
      sha256 "aa9a57871692b53dbf79095f267b290a2e0d6972c718dd90c519d9c8427d573c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
