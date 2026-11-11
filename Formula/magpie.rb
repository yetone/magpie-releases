class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3720/magpie-cli-darwin-arm64"
      sha256 "ea9e2328a0945897285351cf937d8267cefc362e90802b8849c6b5c5d4d1c87b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3720/magpie-cli-darwin-amd64"
      sha256 "2e1651aaee5429a6c9f31d3b6158f32f6ab3c8cd5e8ec3aa07db2a6454d67248"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3720/magpie-cli-linux-arm64"
      sha256 "102240500ca503b7669fb8b58817611193ff6bb2932783bdf039c98871e6defb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3720/magpie-cli-linux-amd64"
      sha256 "53a6a1bca46ac14653d26f26c9eac992564e71ccb34d1c465ac54e46462bc1c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
