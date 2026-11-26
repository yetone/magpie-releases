class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4897/magpie-cli-darwin-arm64"
      sha256 "b8ffc15ffc8011fb35199eaaaa8ed425c8cc2c94b2588445be1c05983769d21b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4897/magpie-cli-darwin-amd64"
      sha256 "a9a0013346d538647da178d6a2952f34c05bc048b26c4b49ba45f855398f96a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4897/magpie-cli-linux-arm64"
      sha256 "475c09d2525bc047efd3502040f5f4a58a28cfc71644f4782eac382eedaf39ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4897/magpie-cli-linux-amd64"
      sha256 "6063d0013a20ac613e25623b615003edbeada7b5ff745bb6bb486fbc92326986"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
