class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4915/magpie-cli-darwin-arm64"
      sha256 "41736a906754f79ae9cae1b04a8d42f6c0c497874486ce673fb3947e047e88e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4915/magpie-cli-darwin-amd64"
      sha256 "ab8ea36b1c4a90fc98e6099a1af277b02da5e3775a80a7fc84c27da5bb4086c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4915/magpie-cli-linux-arm64"
      sha256 "9e4ab837e5ec922e673f6baf9ea64ee39c83cad6baf06d5ceba064f631d65587"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4915/magpie-cli-linux-amd64"
      sha256 "a9c2ff414c35ac589ce1242c5b97f1328f076dc57aa8eec522264d4b42359880"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
