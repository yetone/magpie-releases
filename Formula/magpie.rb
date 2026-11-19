class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4518/magpie-cli-darwin-arm64"
      sha256 "eb24a95520c9e43bb16397d0fa4f4b1b5339e2e9f41501a22b99475ff596c72c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4518/magpie-cli-darwin-amd64"
      sha256 "e040e51b5967437293305858ee8be54146fb398885e0de66bc08cc329ee55dae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4518/magpie-cli-linux-arm64"
      sha256 "6920ed4a5620a7a8378b47b923e30a9a545faf1ad45ae7dd8bf4e194ddc21a92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4518/magpie-cli-linux-amd64"
      sha256 "f30a242e1285227223fe049f77902d56bedfa49d5c95ef1e246ed96e566e39bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
