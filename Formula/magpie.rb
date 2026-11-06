class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3087/magpie-cli-darwin-arm64"
      sha256 "237ee20448a02522f44c3c6e59c7638bbdfa077c847626a799461381e56e585f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3087/magpie-cli-darwin-amd64"
      sha256 "2337cce8104048cf506c1081a92a773dc09d2b314aad231c2f24191e2a9f9a86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3087/magpie-cli-linux-arm64"
      sha256 "91cf6dba99aacddc1f331994cb9bb0b82149f8b7821d3d9d48f89df467659639"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3087/magpie-cli-linux-amd64"
      sha256 "6b56bfdf856d2e2e4e13d96dc897c4134311f390d5a4b7b2361748bf4752e298"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
