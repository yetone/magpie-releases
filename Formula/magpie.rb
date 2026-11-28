class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5054/magpie-cli-darwin-arm64"
      sha256 "04e34b64fa20643f48dab2a581d16ab7a82820f1493d228464e701a9e95070b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5054/magpie-cli-darwin-amd64"
      sha256 "b617172aecd1441e3119128274714e178ac55ac37c22b56d718c5647ef08f2f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5054/magpie-cli-linux-arm64"
      sha256 "25d266413903c4ea4ef0ed6c695df42ad2de81ebf2834501d62592eb1047e886"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5054/magpie-cli-linux-amd64"
      sha256 "1feb87e5453fc8d37b13520b3268217b47dd37a9b07c7a6769d208b95484533f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
