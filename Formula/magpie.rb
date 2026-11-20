class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4606/magpie-cli-darwin-arm64"
      sha256 "ca4be786c938a1be79fc5f70bd27dc2cb2a47476a3cb70cfaf35303b77d2e289"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4606/magpie-cli-darwin-amd64"
      sha256 "f9e7eb324fd8d9e8b8482e7f82a7748372ad59c72df533023fcece2c83af6a19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4606/magpie-cli-linux-arm64"
      sha256 "75eb2ca8a6decff0f4cff489e1f7da33f68589f5bad51242d08440cfe1aaee33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4606/magpie-cli-linux-amd64"
      sha256 "9823836cbd490ea50d949905e11664e4ac86b87c816cda59f056a8070f9ae1b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
