class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4596/magpie-cli-darwin-arm64"
      sha256 "c98702654671cdff0ee2c5e1b1d544562133e67995ae21c6a076046ee21980aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4596/magpie-cli-darwin-amd64"
      sha256 "fb01993ffffa4a8e88697ff141a566e061ca26fa33240207dbf2532d985f73e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4596/magpie-cli-linux-arm64"
      sha256 "0e55d3d206130e00cd0a43a40b78357638082583728ba35cc82469ec833c4895"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4596/magpie-cli-linux-amd64"
      sha256 "51949377c16926dcc588d2e5ba78ae80f4f1efe3da3b2e151d30bd38bf289e6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
