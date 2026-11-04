class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2971/magpie-cli-darwin-arm64"
      sha256 "caa54b3c31f4383487c10e85a078e096540946bbbeabed5b77f68adb1f489448"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2971/magpie-cli-darwin-amd64"
      sha256 "691fd5c181f0367f6dc13d210d92032239af2829979f20f99d0c10f692560caa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2971/magpie-cli-linux-arm64"
      sha256 "67d5e67b6f30937d6df76fded06e750ba0be2542b2d3b13e48df11eec49eacfc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2971/magpie-cli-linux-amd64"
      sha256 "99acf9f4a2ee271579513c6df4175be44917e96dc0c0ed2c2dc772391c10f86b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
