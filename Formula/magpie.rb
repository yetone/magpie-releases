class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3045/magpie-cli-darwin-arm64"
      sha256 "8769b2781e1369d318a0515e043c282bf37807944bf276e4992444a428aaa202"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3045/magpie-cli-darwin-amd64"
      sha256 "7ef10fafd749b153ebf2e6cb6ed78c29a20c9d1cf80b457813d27a9f48ba0ab9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3045/magpie-cli-linux-arm64"
      sha256 "a38987bc6b932359ac8cd8695b09693a8d2d9a3b3c790669be027dfbbe4f911b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3045/magpie-cli-linux-amd64"
      sha256 "9992dcae43e9b2889ec5278a484efec44174926c5e8506d11e5d7ece557aa317"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
