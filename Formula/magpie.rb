class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4390/magpie-cli-darwin-arm64"
      sha256 "c4883e1ca2d59755d34e20969389d8ebcb81450842c61797d7bac2059ba2c329"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4390/magpie-cli-darwin-amd64"
      sha256 "100ec1f0855ad549f27f9d36993502931dc3c46d29083ad4551f2faa585d595c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4390/magpie-cli-linux-arm64"
      sha256 "d31272ccf06c6cb567652bbdd98f5971bab8a9762ced4a5da1cc88a6e01770c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4390/magpie-cli-linux-amd64"
      sha256 "7d6f091b4a75ef55ecdadc48fa6cb4b96bc99807da5d0fd909144d6c63f4880a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
