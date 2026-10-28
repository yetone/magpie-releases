class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1964/magpie-cli-darwin-arm64"
      sha256 "77cbab943dc3fb39f1140185ffe50c3bd1cac243342b66493d82d0d688fba102"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1964/magpie-cli-darwin-amd64"
      sha256 "d31bf021fefaadb561154a5d6e9e69da10845d79e2f272fd02e26f4c1315aa9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1964/magpie-cli-linux-arm64"
      sha256 "96341bba8be50eb9dab47df0a6fee4a68382e17c4977e21ac17133dcd73d0609"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1964/magpie-cli-linux-amd64"
      sha256 "3f0221c139013f50f35ca446ce80d24fe0577765c0881157b9e76567a1714d27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
