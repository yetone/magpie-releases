class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2992/magpie-cli-darwin-arm64"
      sha256 "e4389ee8279d8a51bf2926178d4e6767ede04358bcfa655cafbb5bfd25687707"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2992/magpie-cli-darwin-amd64"
      sha256 "0efea17eac5bd3aeb89bf90803974ce9e00a84e52549a15edc80b3047aa769da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2992/magpie-cli-linux-arm64"
      sha256 "aac1367d865896b32ca795a86fc990b14ebb8d75ff41aba832e9038951e9a4b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2992/magpie-cli-linux-amd64"
      sha256 "caec0489bebbf9b8dc61ceefdb0e8981c21b5e4bfd49d67770542ee1f327bc76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
