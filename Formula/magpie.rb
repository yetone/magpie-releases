class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3417/magpie-cli-darwin-arm64"
      sha256 "3e406faf7ea8c75a2dc7396b456f42bb9e5faf0925b96ca62433f867a13ccea4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3417/magpie-cli-darwin-amd64"
      sha256 "e0145e9b728ae69ef1caaeb59a09155f2655ec889735923935fec031db0da913"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3417/magpie-cli-linux-arm64"
      sha256 "4d6b594bac7783f5a17180a6f952a29e53bfd8c8f53cd1965f7d7360f882228c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3417/magpie-cli-linux-amd64"
      sha256 "6157f9474a5ca0e3ea81cf2d8df1a06dda4666cc90f6a0e84a1ce67afa72b190"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
