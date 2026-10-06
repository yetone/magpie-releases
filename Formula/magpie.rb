class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1080/magpie-cli-darwin-arm64"
      sha256 "52916112147a4a5020ebdd8b8df21a5d40825de1363fa739c5a068687799e02f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1080/magpie-cli-darwin-amd64"
      sha256 "40628490182c68a315db4ad2733d4df2e45bb88bc2b7bde7ab32fe428d25d6bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1080/magpie-cli-linux-arm64"
      sha256 "894ff56e39ad4b4ca242c8d4c6eb895b7fbf303bcd853ede0be32b749592e348"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1080/magpie-cli-linux-amd64"
      sha256 "38b378e67cf2e137e69ab8bfd9cdee65896da6dd5fe722f54f338d1c70898848"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
