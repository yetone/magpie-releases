class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2463/magpie-cli-darwin-arm64"
      sha256 "4f5001c95de64f4c4de3cfa547cb3c9a87dc70ea45056635d2c110b45854ec8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2463/magpie-cli-darwin-amd64"
      sha256 "b7e1b4d24b56adde23bd6a83c376aa44e62fc61906a2267027fd2d2fb36c2ff5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2463/magpie-cli-linux-arm64"
      sha256 "32cf8c815ea185e7dc6f1057fa2a8b6dc4e1eed62031d69b7bf9879e6c193c5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2463/magpie-cli-linux-amd64"
      sha256 "7ebd2a270d878c24a13443a2cd5633a21f8561e4d670247350db37d634c36754"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
