class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3874/magpie-cli-darwin-arm64"
      sha256 "94467ca78c943ba929af658775fa27fe422f9fc76df21f035ad19509ef969653"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3874/magpie-cli-darwin-amd64"
      sha256 "eb88fde0f36f9debf397e215ad5ab31bd4fd557e437754c8d958712168713a9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3874/magpie-cli-linux-arm64"
      sha256 "9397d1b9b3767c5483ba9451074d30d7b711e013388c680e901cca0d0d18c3a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3874/magpie-cli-linux-amd64"
      sha256 "eba653e077e8abf55656eb92e01ee26ecb90168548e3c5335a558e0a25bf1a7f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
