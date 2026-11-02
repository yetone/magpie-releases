class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2690/magpie-cli-darwin-arm64"
      sha256 "b65d0e8dd46635cf291fae8083dccfa97879f721c62663200b06c7164540cc72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2690/magpie-cli-darwin-amd64"
      sha256 "2dad3b6f9794571229c40d85912f2d0cd5b0cc0b04cfdce1548e1075ed22182c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2690/magpie-cli-linux-arm64"
      sha256 "244025b9ee493ddadbaca2c1b7d8c7f621ee10d86bba36addf3bac2e01c9d302"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2690/magpie-cli-linux-amd64"
      sha256 "26fb8771525112579155b05dfee9a5bbb264bf94ea2490cf7a13b073f1108408"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
