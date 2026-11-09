class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3420/magpie-cli-darwin-arm64"
      sha256 "1c67fa8e89ff2f339523603d61cacb5f82537d4b08d4f3aec2fec3a25313ea9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3420/magpie-cli-darwin-amd64"
      sha256 "0741ee234caf49560441f6c21e099808e0622d9492eebb58a36ae8d51522ebc5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3420/magpie-cli-linux-arm64"
      sha256 "5303d65efc9cac1cd69c5345a4093e061b4f8cf7c1653bf600d856c91ea98466"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3420/magpie-cli-linux-amd64"
      sha256 "6581505d04712da582686a7addc632d35625901afaa48d9d088a2a4f76893b7f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
