class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3439/magpie-cli-darwin-arm64"
      sha256 "09e17cca1d393b0eb9e84737bad66397aae12dc9d952ed5abe7c592d485dc1bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3439/magpie-cli-darwin-amd64"
      sha256 "5360575183d1497ac3c53031bf3d277889841892f60e46b99ef3247617a0dc3c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3439/magpie-cli-linux-arm64"
      sha256 "78dd35e5f906e6888663f4c53f0d39a4447f724926278fe3c6826bcbc23a567e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3439/magpie-cli-linux-amd64"
      sha256 "f7813fe629bac028f0ac7b26baa8ef4c9e9a5fe62eae95d74195c000ede2bc3e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
