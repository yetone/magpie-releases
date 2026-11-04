class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2912/magpie-cli-darwin-arm64"
      sha256 "dff15fce63cd4bda4af9155e47bf3d0e8d644f39066545ed728acc15b8fb6d15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2912/magpie-cli-darwin-amd64"
      sha256 "5afd9614e23273c3a989bf022538eae16e35cc794b0220cdd250c98dc91b90ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2912/magpie-cli-linux-arm64"
      sha256 "738db42521a989adfe83dea57c2bec8f5c663cb56c6ebc7e5862f9ac7d181708"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2912/magpie-cli-linux-amd64"
      sha256 "cc8a4ec16d12c530df66f5bd0cfc0242107e667d20103e92ac141bd67246e527"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
