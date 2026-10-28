class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1959/magpie-cli-darwin-arm64"
      sha256 "f00f604e9729b3aa7dcddd28a514e85d853feb16a580842cd90e55f516422cef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1959/magpie-cli-darwin-amd64"
      sha256 "9af4de068c9222222ed98ddc293ff9bcdf21d0de201dcc7c53de8656a177c15d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1959/magpie-cli-linux-arm64"
      sha256 "455b6403f08948858b0e46942f8ef74a51e5215752ae198ae8b0137ec8728f14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1959/magpie-cli-linux-amd64"
      sha256 "b536113c8118f7aa02ccecaef7046145d0bcdfadf3852c43dde5205933c18ed0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
