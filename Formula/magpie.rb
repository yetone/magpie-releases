class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4851/magpie-cli-darwin-arm64"
      sha256 "0c197080823e5cf4b874bceb57fd08ba89589e84542a89ea133860e59ae1eb04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4851/magpie-cli-darwin-amd64"
      sha256 "84850fd67a3e3ea3638c73ac19b9f7d60b1bbcb148a1e7c97568fef5cec77bae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4851/magpie-cli-linux-arm64"
      sha256 "666e230ee69ca50d16218a096953be16394c714e94204b84fae884171745bd9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4851/magpie-cli-linux-amd64"
      sha256 "16de062b4e8dc77906055599a680985c3f5d52c5131c7496d6f19dfbe9f4d3a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
