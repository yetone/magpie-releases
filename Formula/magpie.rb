class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2386/magpie-cli-darwin-arm64"
      sha256 "e7a481952c9258bd18a3a7ab85dbe13d9b639297d32f04749beecdd36f6e3022"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2386/magpie-cli-darwin-amd64"
      sha256 "17df255f46d3518cf90824b3fc787752ccc2cc7a35c51209a74c38785944e149"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2386/magpie-cli-linux-arm64"
      sha256 "54983170a54d6e54a7b0c46523df264af7622cbf177081c9174f83deacc52ace"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2386/magpie-cli-linux-amd64"
      sha256 "6409992fd86a1b693cf81538bbf32af2ec5b76440cd6b24f46cc95b5452ecd02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
