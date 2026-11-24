class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4770/magpie-cli-darwin-arm64"
      sha256 "c9571ced680b1dadde0265b238fff7e80a2ad475abea2ba50a2c94fd48f72595"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4770/magpie-cli-darwin-amd64"
      sha256 "92c57a1d0cb1f810e11c815cc5f4993626809e068d3ae207c1b4685ee1b1d1c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4770/magpie-cli-linux-arm64"
      sha256 "edadcd2d3313edd58df6bd8472903063973be64e16eb9b0b406bf3fb49dc2234"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4770/magpie-cli-linux-amd64"
      sha256 "27e80a066f712609f8facb0e8aa408e07d4fdfb602438fefec401376813d2897"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
