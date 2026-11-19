class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4541/magpie-cli-darwin-arm64"
      sha256 "d38c1f8774732aa7ade5b62c9f18773970b4ade9293dc047af398bd5510ff3f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4541/magpie-cli-darwin-amd64"
      sha256 "2bc978b33e16cfd55dff72055260c516dfac84e6c2912238a6b31b36f0fd5804"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4541/magpie-cli-linux-arm64"
      sha256 "97227e04bd968b5e93fd078ba9ce7a63059b33a267bcfb53b95d4d6ec5584b79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4541/magpie-cli-linux-amd64"
      sha256 "e1b817d3fc2ebb55dd7357131576b5772089b68534d78bcb3a45a266042aefeb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
