class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2791/magpie-cli-darwin-arm64"
      sha256 "3a708c73d48f8e000fdee7aa50c187d03e6c4592fc561d373fd732938e2b3365"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2791/magpie-cli-darwin-amd64"
      sha256 "79c55201aabb5d4e262b8221c38eb2f135b1bf91407dce0ccb37ccd520bf3bc3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2791/magpie-cli-linux-arm64"
      sha256 "154a84a5f55de13ea7a155b668bd798d92d4279b840d73efde330a128bfe144e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2791/magpie-cli-linux-amd64"
      sha256 "3d277c4d011c5d3738fbf09317161dcf86f52a3f94c4dcaaf977b3f8d753f50b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
