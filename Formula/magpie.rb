class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3581/magpie-cli-darwin-arm64"
      sha256 "aba23c2cdda9da7d436552d5211e7495fd4c024fcf3f5aec028c826f2fdf4294"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3581/magpie-cli-darwin-amd64"
      sha256 "47090eee4d4c23645ddbc6bc0411d2e79ff081d795861f429e5399c6a2f272ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3581/magpie-cli-linux-arm64"
      sha256 "4c8c87f05ce011cd12cb40ef66ee335da7633efde325a68da03c421757988b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3581/magpie-cli-linux-amd64"
      sha256 "bd0332252c519cc0f00b4bc18611a2640d34447bf5c842c33cebdd763ec994f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
