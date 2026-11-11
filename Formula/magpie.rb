class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3666/magpie-cli-darwin-arm64"
      sha256 "51e4f76dda88732f278abf278042342791ecc980e806fd4109491d2fa59f2430"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3666/magpie-cli-darwin-amd64"
      sha256 "d33b28a8c5668df19311bdd4c8dc123e112016928fccfc468b0eb8d1b240c0d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3666/magpie-cli-linux-arm64"
      sha256 "969e955853f2ac5c8435364adda2ef6663b5d3e5c715059e2e85ab8d2674b1e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3666/magpie-cli-linux-amd64"
      sha256 "7083d60160edc1f7c0272203a5780a6e9ac1432a22bdd05725b6bdb05d2cf6c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
