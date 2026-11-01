class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2660/magpie-cli-darwin-arm64"
      sha256 "64d9350bd9dc1d2fcda905053f3cad721c9639006bcaecab19e3bee7f14e6fd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2660/magpie-cli-darwin-amd64"
      sha256 "a7915249a4c06ec66df2af3fba0f3664e94fecf3b3f99be98ff43f2c84ea43f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2660/magpie-cli-linux-arm64"
      sha256 "4b6b059fc92118c2032dd2e3ccbca049963fd75a820ef054bbe004750057cc39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2660/magpie-cli-linux-amd64"
      sha256 "db4851e19189e9d25f4cc92f2f95675ef587a2eff997d309a029505b5c4eb56f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
