class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2252/magpie-cli-darwin-arm64"
      sha256 "f138e696661457d24e61fece0599a994d47331abe39fef885ebbd8bce9e73b1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2252/magpie-cli-darwin-amd64"
      sha256 "e290fbe28480c766db831b01d5167995c6a4a49172d08c11ad4e30a79c90609c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2252/magpie-cli-linux-arm64"
      sha256 "6f8685a592a1b72ce92c39eab81e1a6883a9fcc6668d1b59957c6816e5733ee2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2252/magpie-cli-linux-amd64"
      sha256 "e6175e208e31eb797f13746f21b0b11d3e644e4100b250958f4cc7c2b1b91760"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
