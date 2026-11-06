class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3091/magpie-cli-darwin-arm64"
      sha256 "a78b466e47baed3ccaf0c51edf56d72ea851f88afdf80a662ff7c85d6a76529d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3091/magpie-cli-darwin-amd64"
      sha256 "5a33f3740f6fdf9f9eadd911f33ec0b50519d60853d733dfc19ecf57d3ddbe6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3091/magpie-cli-linux-arm64"
      sha256 "9e54283491900ef8b5b17192fa256b81e94c0089495455323643c6d12783cbdb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3091/magpie-cli-linux-amd64"
      sha256 "0f3d4cf0f6fd1243c17e333e7715bef32572d5bce9fcee4ed039879000b8b820"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
