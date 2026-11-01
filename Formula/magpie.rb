class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2551/magpie-cli-darwin-arm64"
      sha256 "b73261fd4e6243410e3af341f5ae3ce89c9398c0d18d17a7101074078227f5cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2551/magpie-cli-darwin-amd64"
      sha256 "3272850f6393920c735fa93ec5dc15bb21122f39f6fa334a4e543ebae5ac02cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2551/magpie-cli-linux-arm64"
      sha256 "865e6d8c1a4b4fe82790a52d7039066ee0ade280286252d99f52275279f6e22d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2551/magpie-cli-linux-amd64"
      sha256 "c69161a8dd2d9cc4a43296e4d18861da3db0cfc42715915f643252ca2b081872"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
