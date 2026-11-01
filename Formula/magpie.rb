class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2648/magpie-cli-darwin-arm64"
      sha256 "b20607c229f5f2bb619d603c7225c4345840b14edcd88fb7c0315904d19da432"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2648/magpie-cli-darwin-amd64"
      sha256 "c3bd6660cb67c5ba7063cb28226a7697d9352ced0efcde1f9991e32fcd39505d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2648/magpie-cli-linux-arm64"
      sha256 "24e3fe6ca3a8b7585089d7ea2cc5803abbea237dc45bc5f4d40f7813f87c98b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2648/magpie-cli-linux-amd64"
      sha256 "301298b2fb7404b6a73db0922672990d1846ee5955e4986ec26702c53dc30ae6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
