class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3642/magpie-cli-darwin-arm64"
      sha256 "00d05dc05ae2b939601027440541dd89ef01629dc4d8da91a5f61bb6b12a5585"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3642/magpie-cli-darwin-amd64"
      sha256 "4e947ee38022ea15e16c3118f46e97c05ec44e60240f992c3a43a9c1a73977c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3642/magpie-cli-linux-arm64"
      sha256 "e3dd683e865df6097f64b36104f7f7d8db0da5bc5b0e2d813b0ff3b953f42141"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3642/magpie-cli-linux-amd64"
      sha256 "ed79ba42bd66aa032e06eeca980ee01219541e0d7e1213e6790addbfc3f5a483"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
