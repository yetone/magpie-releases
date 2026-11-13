class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3963/magpie-cli-darwin-arm64"
      sha256 "a21d7d5eadbcc374065904ef92b12821f0471550dafeaa1dc74816b1d84b3246"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3963/magpie-cli-darwin-amd64"
      sha256 "c4753d555d8de94f18ae203f9d67b0799c8e22256b8d48f78632bcb95379ce5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3963/magpie-cli-linux-arm64"
      sha256 "b7b6be4f023db558f834a8bbb6d288a9e3959928cf4273b2586c6fb48af6e38a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3963/magpie-cli-linux-amd64"
      sha256 "fa471b1b10528ed1a33d0860c6a934c61250a9f33a0e0b1e960c368cb2ce791f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
