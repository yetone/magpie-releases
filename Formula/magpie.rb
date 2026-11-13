class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4026/magpie-cli-darwin-arm64"
      sha256 "f7c328635f548928a641bfeaac24bd7741b6a7269bac29e3dabb9ab3114d670b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4026/magpie-cli-darwin-amd64"
      sha256 "dad97fcf56e9b95640c7a76a9e1bfab85e731f812da24b0832c7613b3dacb0e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4026/magpie-cli-linux-arm64"
      sha256 "f71f17ddad6195f4eb65694b733f5920155ee97ab8fc020da731b2bd35e4b87e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4026/magpie-cli-linux-amd64"
      sha256 "e613539794b4afbc7d9b97236c336475f46f64eba9d89fd2abd2406e2996cd93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
