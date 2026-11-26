class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4879/magpie-cli-darwin-arm64"
      sha256 "d1f294d15d1f618c349865c61c1ca20225f11487bc87a786edf137107c133622"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4879/magpie-cli-darwin-amd64"
      sha256 "453467b69f6586e902c24a8b66387fb61db196f27eaa9a162c49e72f351ac5b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4879/magpie-cli-linux-arm64"
      sha256 "9606ca65689deb8995a6194e3abc29095daa3812e9abc8372b8977d236501a70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4879/magpie-cli-linux-amd64"
      sha256 "47a841fd995446a7924b5eeca826c3c7392b655e1d7367f736a62be4afa80d63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
