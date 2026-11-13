class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4084/magpie-cli-darwin-arm64"
      sha256 "64bf5e1028e773e66b6aa8de1d935d13ca8e85d511e3c0e04b99303500bd627d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4084/magpie-cli-darwin-amd64"
      sha256 "25d3e76ad8a113eea356bb587e574bdbeae1482c51cb65ee781030887e7daf38"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4084/magpie-cli-linux-arm64"
      sha256 "e8b082a468c5494c0576d120d311866576a1faa0227e41f73b5a9b7103e488ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4084/magpie-cli-linux-amd64"
      sha256 "52add0eb43606b85ba07678666223b75c6ede05ec3f09cd03fe5db061ce351f5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
