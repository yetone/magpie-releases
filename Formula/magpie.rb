class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3514/magpie-cli-darwin-arm64"
      sha256 "60d9a5776ec245f71f09d8e42be189c12adc56e681f38e5f166666f23d2bf57d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3514/magpie-cli-darwin-amd64"
      sha256 "7f72ac12c56eb9625010295de4d592a35bfbe31f5812ff4507d791ba4c5a43d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3514/magpie-cli-linux-arm64"
      sha256 "dd47285eea8d867de9247a185c39a906ec8c2176e14595955f8d460c1f666380"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3514/magpie-cli-linux-amd64"
      sha256 "27a73a113316a0811598316bf165850397fabd32b9384e80c39724822a661162"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
