class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3657/magpie-cli-darwin-arm64"
      sha256 "616b1511d337d7ea5058bbef101f8d3720fdb8acfe305bcee275de0acc0c94d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3657/magpie-cli-darwin-amd64"
      sha256 "ec8c6d8ddcee52e6adbb22e60c8cf1190f03653925adfc69c1ad6391ed27bf5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3657/magpie-cli-linux-arm64"
      sha256 "514db7b3c32c7e0762261b6b2fa1acab70e475d0797be87d9ec746603b821c8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3657/magpie-cli-linux-amd64"
      sha256 "5fd47345127918299ef8aa49432d9408501af376b78e04618a5a89d3b86ec099"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
