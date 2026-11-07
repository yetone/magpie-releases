class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3276/magpie-cli-darwin-arm64"
      sha256 "4bb899c9abc4dfd47a1b1bd0655ff06c0dcfb13d8f2ff90e01b5d98f86512aeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3276/magpie-cli-darwin-amd64"
      sha256 "7d6e9fb36c7d973c4c854373ee0906f47a7adfd5af2dafc1fa086222430375bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3276/magpie-cli-linux-arm64"
      sha256 "261686540ede63919a54a6a2fe06c976dd83d0ba5cc90ab9842065e7de157193"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3276/magpie-cli-linux-amd64"
      sha256 "44b832531e3b162d2c940e62cbd65c47de4313cbb28fc6841bccb75b4be18404"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
