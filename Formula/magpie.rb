class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2391/magpie-cli-darwin-arm64"
      sha256 "85e5c821a2212595a934ad47519d4d3e7b3e86d0a0ec05a1ce6512cde0266088"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2391/magpie-cli-darwin-amd64"
      sha256 "84e8cd39706fc4187be7c74d6f696ae8a8d0b24d98ef4a619cb4a74ba7c7635b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2391/magpie-cli-linux-arm64"
      sha256 "0759033acdb545084a9c41bdda7a7f8f2766f334bec16e8c4230dd4f85de73e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2391/magpie-cli-linux-amd64"
      sha256 "b836f8f9ad9d9dc88843bb57e8604d408a513009fd81a3aec22a178043fc14c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
