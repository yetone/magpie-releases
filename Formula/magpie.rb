class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1108/magpie-cli-darwin-arm64"
      sha256 "576cfd3e87aa0fcba51c674f2be53942448ebc9b5e307724a16c1491599aa99c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1108/magpie-cli-darwin-amd64"
      sha256 "4cf0cfbdf0d7f764ac3fb281a6a1e5d5cf1929d38dbe51eaff9a8645c16a05fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1108/magpie-cli-linux-arm64"
      sha256 "1458a10c49b94a77653cf1faba65591d5e7b53395816ef11a66978c69b738067"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1108/magpie-cli-linux-amd64"
      sha256 "36da917d5af130c0273c39d2f7270ec44f44472ea96a71b64fb742925946d76c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
