class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2138/magpie-cli-darwin-arm64"
      sha256 "8256b614654045f3c6f7303d3bcfa49ba8e50b46ff4f45fce9de513dcabdb11b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2138/magpie-cli-darwin-amd64"
      sha256 "a27e316bbc93d527cd700696cc45e6fe8f4199bc9ab6b7543b09a04ae575d3f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2138/magpie-cli-linux-arm64"
      sha256 "d3e682fe60a548cdfa657c4fc81b55de067d22e61407a5bed01b13125d99c84e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2138/magpie-cli-linux-amd64"
      sha256 "c9933f6698d74bbeed7f57deb10c6ed1cb7ac91261a414d5a01d3dffd0a8965d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
