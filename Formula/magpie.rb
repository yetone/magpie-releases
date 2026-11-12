class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3870/magpie-cli-darwin-arm64"
      sha256 "1dec92b2d3a1b1a9d5b46329e5e9608655d98d6782f752dfe6e2563c3425092d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3870/magpie-cli-darwin-amd64"
      sha256 "908d2a7a2535b1c376044b6b750796e0fc99e5a93c25f741e86ad78baba72eef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3870/magpie-cli-linux-arm64"
      sha256 "b5e6d6c7d357f62375da68b9bf1096e067397b123bc7784f7ff2d51693fa820d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3870/magpie-cli-linux-amd64"
      sha256 "d73544cf9dc8d73320a690e0e583864b01a80a0f69db5aa47eae6371d9854e55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
