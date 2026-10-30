class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2276/magpie-cli-darwin-arm64"
      sha256 "d1c816f8dfe7a52b0670e4b01b174b8b2ce625a6d1469e16eb926f342c7d3c1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2276/magpie-cli-darwin-amd64"
      sha256 "da65887e89c9d2a780d744f9cfb8af8a652089dae8e4b8ba01fa0ea3259e3c8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2276/magpie-cli-linux-arm64"
      sha256 "c6c1959999e333bb2133e9a699f23b717004a934331c8c6f1365f777f352e519"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2276/magpie-cli-linux-amd64"
      sha256 "1cb1495a7cc14bdcab8ca47f7a39637fb2cb09bba3819ea123148991990736f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
