class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4407/magpie-cli-darwin-arm64"
      sha256 "cc70913ea87c91084bac500efdff1f8dd79298a79be0008226765b37266338a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4407/magpie-cli-darwin-amd64"
      sha256 "b8b948a9d6948c3cb4c3683ef96cfaa88676447615ad44186c0c8f83dd90fc81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4407/magpie-cli-linux-arm64"
      sha256 "1e22363697be31001502df7dbee1c4ade333e8c974dcd24a81dce0a68a800045"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4407/magpie-cli-linux-amd64"
      sha256 "325703a34ffd67efe41214495c7010a13ab3def2e275699aec8e0e8433f31903"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
