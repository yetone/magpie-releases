class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4156/magpie-cli-darwin-arm64"
      sha256 "b7d03499836deda29a48ae7cabec5aff51310ff3ae0b0d41b659f9236b08edec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4156/magpie-cli-darwin-amd64"
      sha256 "563515e1336f01da42286ea236796f8db0d388a9f2cd1a0e8be091bc77b8f213"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4156/magpie-cli-linux-arm64"
      sha256 "094202bb509565089cc2824a87cc111edbb084765cae393db3d0cd5ec176d77b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4156/magpie-cli-linux-amd64"
      sha256 "9f53770843addd8b171ace15395c6056717658a1ffac7cadf7af5687850ee535"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
