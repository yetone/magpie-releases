class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4212/magpie-cli-darwin-arm64"
      sha256 "37404a74eb913e1ac8bec805fb9666ce55030e0da3c0a5be6ec5fdb2f8254703"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4212/magpie-cli-darwin-amd64"
      sha256 "6dfc80cc35eb3bef80825d70a300b925726a5f8de5368a439b4937b9fa36da35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4212/magpie-cli-linux-arm64"
      sha256 "7c5f3a70eba6d202b5774b85157efb62957bee4da50a08f543be67a4f0fdad1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4212/magpie-cli-linux-amd64"
      sha256 "f515fa09bcc807c9b4d007da07e99b6d63fec03c6e81367f3303f9c534e545e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
