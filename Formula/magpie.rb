class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2501/magpie-cli-darwin-arm64"
      sha256 "853f1077dde0331cf79c88b4c90912dc26c7848574250510bd7db3e670a88b91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2501/magpie-cli-darwin-amd64"
      sha256 "31313fcf03a1c581f265becb1fc0b63648903a0b7a70955dc5801aabb0f6496a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2501/magpie-cli-linux-arm64"
      sha256 "34e0a62d9b4bbef12e736ef51a75d75f5a92a22a35c78c636375b2d7ee86529a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2501/magpie-cli-linux-amd64"
      sha256 "442072a383ad55773574cf5ff03fc9724156379097d5fcad8febd2edc9530774"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
