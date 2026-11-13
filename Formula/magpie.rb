class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3974/magpie-cli-darwin-arm64"
      sha256 "39ffa57247efb359749d0317b3bc2559385e981ebc818b653867417d1d14532c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3974/magpie-cli-darwin-amd64"
      sha256 "6178f2bceddc624b8c08ae5f356c660beb1582667f7ae721896645944cd6002d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3974/magpie-cli-linux-arm64"
      sha256 "307dc174cdcf059cb4eb905cec128f03afdd55b4c29883d7f634c35801a8d43f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3974/magpie-cli-linux-amd64"
      sha256 "609fe55196cd714f8a8f07fdc6e80d0bd77d80e7d812d4be60ef25a0c20c6815"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
