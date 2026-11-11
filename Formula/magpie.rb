class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3806/magpie-cli-darwin-arm64"
      sha256 "4d88c0c2c8c447556016daed93cb2b2af104dfb6482cde689d5fdad4d2b4c3c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3806/magpie-cli-darwin-amd64"
      sha256 "2d633e027f262ab6bba6311f8d3da07e09799433e8f4f1a45293bea2a41703cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3806/magpie-cli-linux-arm64"
      sha256 "bd00b0608c28aa746360640959597a43af6c9ebd00ce12aaff27183ac2aa26cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3806/magpie-cli-linux-amd64"
      sha256 "54afdcb8dd84efcdf8983ae071367836ed6014f74f2599eca56ad66ad323922d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
