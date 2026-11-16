class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4302/magpie-cli-darwin-arm64"
      sha256 "51b0496acfb5d0025873a61be892ae70f073e1d70156b608bfc428cf59cf8a86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4302/magpie-cli-darwin-amd64"
      sha256 "228b3832ea13f9f1f1f7f5e9007e565358ce2cbd144b513e56fa052bde133502"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4302/magpie-cli-linux-arm64"
      sha256 "53f8479bfa4bbed280a3ba5de4cf5a0b3c54c5812fbbce263b9dedd4695ca858"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4302/magpie-cli-linux-amd64"
      sha256 "bb28ea817ad99c304aebb724b1200d23212daec213a2f3f7556fc68860f2f57b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
