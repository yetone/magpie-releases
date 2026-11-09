class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3408/magpie-cli-darwin-arm64"
      sha256 "53a51a24db6b7b09e27dee6146a3dd0220da4650370a1490ea790a06b9d89c3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3408/magpie-cli-darwin-amd64"
      sha256 "6f5281501ecd67d4c4036d88a7b8b1561bc6661801e7986790dee26af5b685e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3408/magpie-cli-linux-arm64"
      sha256 "8a59a3b9d86ce456191533887e9d35e592005c724630432adc37908161dabb2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3408/magpie-cli-linux-amd64"
      sha256 "19df6b713b381c97ee9e0beac8b8de72dad9afb349c69c311044661605b12410"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
