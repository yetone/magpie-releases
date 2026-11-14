class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4133/magpie-cli-darwin-arm64"
      sha256 "ed8340665aeecef5078493dafde76e903e88cffe94f17e5bd83abf3cd0a335ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4133/magpie-cli-darwin-amd64"
      sha256 "0000df795248e17562b0844b9e0d4d1c6db26f282cf8f96bca9edbb59e674b9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4133/magpie-cli-linux-arm64"
      sha256 "612288cbaa28b420ebadbc9f7c197dbb6c19aa0f0112cb1a3fd05c16dd04d4ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4133/magpie-cli-linux-amd64"
      sha256 "d22cfce98e5dd8f5d8ad3a303d60419324fd4d55639882c7809ddaa389861fca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
