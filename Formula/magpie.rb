class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4968/magpie-cli-darwin-arm64"
      sha256 "c793a8a2285c1ba8e4919386386687cecf1adad530a1d7077fedc37bc948ec29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4968/magpie-cli-darwin-amd64"
      sha256 "ea574950ab1294ba8357bdc136e2f04996456e5aea347518f37442f5bd724a0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4968/magpie-cli-linux-arm64"
      sha256 "a24c8fd81ce4645c6f1f323376373cc247b558b9cf6f3f93dcaf52427280b49b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4968/magpie-cli-linux-amd64"
      sha256 "774dc5c10d9bee8366b63698b567d6d1262c3e60127196825542cd268ad4bd96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
