class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4618/magpie-cli-darwin-arm64"
      sha256 "ccbdcc6f588583ed8c4a1ccd459546a4f88aa8bd0dd70e979deac23efe374d2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4618/magpie-cli-darwin-amd64"
      sha256 "94f809e894430aa33288d08903d9071977704461f84ecf7c77bdebc1630192b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4618/magpie-cli-linux-arm64"
      sha256 "dda86e278ce36c4776b7b1d916138e9d1bdc53840c473169f9bd27fd5aca12ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4618/magpie-cli-linux-amd64"
      sha256 "1916917a150a2911cc9ba728a4eaa2ecca874f023dc9a43ad657a32bbb332d18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
