class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4233/magpie-cli-darwin-arm64"
      sha256 "0e120b3244c5bfb3ab86c95201969192a01abd79eb62b1e621540d342084e546"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4233/magpie-cli-darwin-amd64"
      sha256 "a888add3870e54a4bd2eeeaf0569b87032f259a1dba65f4f11caa9e1f03d5483"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4233/magpie-cli-linux-arm64"
      sha256 "c6c3137d044bb994dcf4d477db066715425d3d1ccbb6c3fae7996f015ea1be62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4233/magpie-cli-linux-amd64"
      sha256 "8003a7a1c2170793b18abad27b07be5f80cda762019f1347f935ffeb373b52af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
