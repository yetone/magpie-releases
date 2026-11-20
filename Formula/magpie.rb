class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4607/magpie-cli-darwin-arm64"
      sha256 "35e61e533ccc1540176ac13b05aaf17ee148d18c3d44aa81e5a5bb4df475ebfc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4607/magpie-cli-darwin-amd64"
      sha256 "b3243a8ed4667db07308414f1a11f7aadb43b3aeef55bdf16323bed7e4bd68a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4607/magpie-cli-linux-arm64"
      sha256 "328ae9a55d2564dc26e22c0223e109450c356d9595a6e11c5b589a4c2b5f6695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4607/magpie-cli-linux-amd64"
      sha256 "499db90dfae89412af453942e8ffeede01a264f0e3a918222a5daa44906907cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
