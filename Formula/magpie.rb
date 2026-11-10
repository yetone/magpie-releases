class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3554/magpie-cli-darwin-arm64"
      sha256 "da22729a9976871aa6ea06088560de9c60e5fecb23efd899f4c723b6ac479712"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3554/magpie-cli-darwin-amd64"
      sha256 "6399dd20c27ee3824e66bf4c85ae0ef0bea0692ac0bc2d187c5c42458adfb2b3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3554/magpie-cli-linux-arm64"
      sha256 "3f58919f753aa4cb7fb871da0e0182059b9b65e5e9a0d862704a0bc49c85289f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3554/magpie-cli-linux-amd64"
      sha256 "57d3084f5b29be78a08db23ef6214f5180c6caf393144a36cf6d415406329853"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
