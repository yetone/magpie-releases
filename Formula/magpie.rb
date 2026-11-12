class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3934/magpie-cli-darwin-arm64"
      sha256 "2225877ef041c6d08c7f4f4180e4d82c9481cd490bb8be912d164735bb99e8f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3934/magpie-cli-darwin-amd64"
      sha256 "2c663df811c2b958ad8b69df2b077ea2079dc716f99132388646012ec91ad021"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3934/magpie-cli-linux-arm64"
      sha256 "7ba1870544fc4b35b39eecdc8cc6279481faed207971d6882094dcf2c5ed70f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3934/magpie-cli-linux-amd64"
      sha256 "15e1366d719fc0766a65a84ee79e471ede4017ce17d37f8ae67e4cf941e89fd4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
