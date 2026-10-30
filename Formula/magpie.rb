class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2199/magpie-cli-darwin-arm64"
      sha256 "1d8d0d405af3b5645b912f0c9a9c5b4195326054736a1494e7646ad90b0b9732"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2199/magpie-cli-darwin-amd64"
      sha256 "f20d0db6452c0e1ac0ef8b8f190cea08264507a4c540dbd905b76d56bdc6704b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2199/magpie-cli-linux-arm64"
      sha256 "35e0425c4f327fc6b5368579c809c945ebf0ecebfe1f9d54ec562c86b39d24af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2199/magpie-cli-linux-amd64"
      sha256 "96c94cd1ee26a55604842ed877ec764e0531266f04babb26a68d98c27fee58a2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
