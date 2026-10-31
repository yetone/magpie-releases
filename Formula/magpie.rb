class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2288/magpie-cli-darwin-arm64"
      sha256 "785a296208cb3b0b52fe933d19898e398a78c8df3ded1baed91160c70c3bed8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2288/magpie-cli-darwin-amd64"
      sha256 "52500ab271f34a966f66fbf09ef92bfed038a43bfd1eda28452cff32bf5f3246"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2288/magpie-cli-linux-arm64"
      sha256 "c34f94a98ebbd838588616dc2989633bd292c6f2f2b214907b18493670323b49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2288/magpie-cli-linux-amd64"
      sha256 "5247095aeca182c92d5dc160d8a3c6218e057421f6e0cc0410832f38573c1658"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
