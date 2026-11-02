class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2668/magpie-cli-darwin-arm64"
      sha256 "19c9e5388d98091d011a6826a734283970b0d52d6572ffe5c1a2f8d54abbf1b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2668/magpie-cli-darwin-amd64"
      sha256 "c5a859d9e0fc46ba4c228671ec8d14ebd1d853dab8d2e3e02833b9484f13002f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2668/magpie-cli-linux-arm64"
      sha256 "f88b10d4303334e92da9f1cbfeac0961d79ddf9f0aba442eae05a31d6145810c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2668/magpie-cli-linux-amd64"
      sha256 "2dc50afa66821bcf0b8a619e1d3e40b61d03443d7b122fbb1a31e3a72b373b3c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
